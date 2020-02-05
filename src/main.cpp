#include <iostream>
#include <string>
#include <sodium.h>

int main(int argc, char** argv)
{
    uint32_t rand_bytes = randombytes_random();
    std::cout << std::to_string(rand_bytes) << std::endl;
    return 0;
}
