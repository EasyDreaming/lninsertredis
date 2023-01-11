#pragma
#include "hiredis/hiredis.h"
#include <iostream>

using namespace std;

struct RedisConfig
{
    int port;
    string url;
    string password;
    RedisConfig() : port(0) { url.clear(); }
    RedisConfig(int port, string url, string password) : port(port), url(url), password(password){};
};

/**
 *  This function is used connect to redis. If successful, return true,
 * else return false; If return false, the redisContext result is NULL, else
 * it need be freed.
 *  Parameters:
 *      @param result:     the redisContext to return
 *      @param rConfig:    the redis config struct contains port and ip.
 *  Return:
 *      bool:       true for Successful while false for failed.
 */
bool lnConnectRedis(redisContext *&result, RedisConfig &rConfig);

/**
 * Note that: the myConfig is static object.
 * This function is used for read redis config from file configPath.
 * It catched all exceptions that it may be meet to make sure the service
 * is running all the time, although the stopping of it is a FATAL ERROR. If
 * read successfully, return true, else return false.
 * Patameters:
 *      @param rConfig: redisConfig to return.
 *      @param configPath: JSON file contians redis config.
 * Return:
 *       bool:       true for successful while false for failed.
 */
bool lnReadConfig(RedisConfig &rConfig, string configPath);

/**
 * Insert datapath to redis. Return true if insert successfully else return
 * false.
 * Parameters:
 *      @param datapath:   datapath insert to redis.
 *      @param configJson:  JSON config file path.
 * Return :
 *      bool: Return true if successful else return false.
 */
bool lnInsert2Datapath(string datapath,
                       string configJson = "/root/config.json");
