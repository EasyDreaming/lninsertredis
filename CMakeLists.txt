cmake_minimum_required(VERSION 3.9)
project(lnredis_test VERSION 1.0)
# include_directories(lnconfig/include lninsertredis/include)
include_directories(lninsertredis/include)
set(DIR_SRCS main.cpp)

add_subdirectory(lnconfig)
add_subdirectory(lninsertredis)

add_executable(lnredis_test ${DIR_SRCS})
target_link_libraries(lnredis_test ln_insertredis ln_config hiredis jsoncpp)
install(TARGETS lnredis_test ln_insertredis ln_config
LIBRARY DESTINATION lib
RUNTIME DESTINATION bin
PUBLIC_HEADER DESTINATION include 
)