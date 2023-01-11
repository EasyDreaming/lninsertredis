#include <iostream>
// #include"lnconfig.h"
#include "lninsertredis.h"

int main(int argc, char *argv[])
{
    std::string filename = "/root/config.json";
    if (argc > 1)
    {
        filename = argv[1];
    }
    std::cout << "hello world " << filename << std::endl;
    RedisConfig rConfig;
    redisContext *result = NULL;
    if (!lnReadConfig(rConfig, filename))
        std::cout << false << " read config.json failed" << std::endl;
    else
        std::cout << true << " read config.json successfully" << std::endl;
    if (!lnConnectRedis(result, rConfig))
        std::cout << false << " connect to redis failed" << std::endl;
    else
        std::cout << true << " connect to redis successfully" << std::endl;
    return 0;
}