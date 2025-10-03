#include <iostream>
#include <cstring>

int main(int argc, char* argv[])
{
    if (argc != 3)
    {
        std::cerr << "Program should accept 2 parameters!" << std::endl;
        return -1;
    }

    int val1 = atoi(argv[1]);
    int val2 = atoi(argv[2]);

    std::cout << val1 + val2 << std::endl;
    return 0;
}