// #include "lninsertredis.h"
#include"lninsertredis.h"
#include "lnconfig.h"

bool lnConnectRedis(redisContext *&result, RedisConfig &rConfig)
{
    result = redisConnect(rConfig.url.c_str(), rConfig.port);
    if (result == NULL || result->err)
        return false;
    auto comd = "AUTH " + rConfig.password;
    auto passwdReply = (redisReply *)redisCommand(result, comd.c_str());
    if (passwdReply->type == REDIS_REPLY_ERROR)
    {
        cout << "redis connection password error" << endl;
        freeReplyObject(passwdReply);
        redisFree(result);
        return false;
    }
    freeReplyObject(passwdReply);
    return true;
}

bool lnReadConfig(RedisConfig &rConfig, string configPath)
{
    auto jsonConfig = Config::getInstance(configPath);
    if (jsonConfig.isReadSuccessful())
    {
        auto root = jsonConfig.getRoot();
        if (root.isMember("hostname") && root["hostname"].isString())
        {
            rConfig.url = root["hostname"].asString();
        }
        else
            return false;
        if (root.isMember("redis") and root["redis"].isMember("port") and root["redis"].isMember("password") and root["redis"]["port"].isMember("host"))
        {
            auto port = root["redis"]["port"]["host"].asInt();
            auto password = root["redis"]["password"].asString();
            rConfig.port = port;
            rConfig.password = password;
            return true;
        }
        else
            return false;
    }
    else
        return false;
}

bool lnInsert2Datapath(string datapath, string configJson)
{
    RedisConfig rConfig;
    redisContext *result = NULL;
    if (!lnReadConfig(rConfig, configJson))
        return false;
    if (!lnConnectRedis(result, rConfig))
        return false;
    auto comd = "SADD data_path_single_set " + datapath;
    auto reply = (redisReply *)redisCommand(result, comd.c_str());
    if (reply->type == REDIS_REPLY_ERROR)
    {
        freeReplyObject(reply);
        redisFree(result);
        return false;
    }
    freeReplyObject(reply);
    redisFree(result);
    return true;
}