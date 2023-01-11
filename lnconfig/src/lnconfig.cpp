#include"lnconfig.h"
#include<fstream>

Config::Config(const string filename) {
    this->flag = false;
    this->openConfigFile(filename);
}

const bool Config::openConfigFile(const string filename) {
    ifstream ifs(filename, ios::binary);
    // ifs.open(filename);
    if (!ifs.is_open()) return  false;
    Json::Reader reader;
    if(reader.parse(ifs, this->root)) {
        this->flag = true;
        return true;
    }
    return false;
}

