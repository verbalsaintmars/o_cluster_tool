#include "constants.hpp"
#include "io.hpp"
#include "jsonparse.hpp"
#include "optparse.hpp"
#include <iostream>

using namespace std;
using namespace OCR::JSON;

void run()
{
    auto j = parse_json();
    cout << j << endl;
}

int main(int argc, char *argv[])
{
    try {
        optparse(argc, argv);
        run();
    }
    catch (const std::exception &e) {
        // TODO log
    }

    std::exit(0);
}
