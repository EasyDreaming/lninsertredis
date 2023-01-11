#include<iostream>
#include<vector>
#include<sys/stat.h>

int main() {
    std::vector<std::string> dirs;
    dirs.push_back("tmp_test1");
    dirs.push_back("tmp_test1/tmp_test2/");
    dirs.push_back("tmp_test1/tmp_test2/tmp_test3");
    for (int i=0; i<3; ++i){
        int flag = mkdir(dirs[i].c_str(),S_IRWXU | S_IRWXG | S_IRWXO);
        std::cout << i << " flag " << flag << std::endl;
    }
    return 0;
}