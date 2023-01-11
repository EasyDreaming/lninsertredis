#pragma once
#include <iostream>
#include <json/json.h>

using namespace std;

class Config
{
public:
    static Config &getInstance(const string filename)
    {
        static Config myConfig(filename);
        return myConfig;
    };
    static Config &getInstance(const char *filename)
    {
        return Config::getInstance(string(filename));
    };
    const bool isReadSuccessful() const { return this->flag; };
    Config &operator=(const Config &) = delete;
    const Json::Value getRoot() const { return this->root; };
    const bool openConfigFile(const string filename);
    const bool openConfigFile(char *filename)
    {
        return this->openConfigFile(string(filename));
    };

private:
    Config(const string filename);
    Json::Value root;
    bool flag;
};