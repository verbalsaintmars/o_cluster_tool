#include "io.hpp"
#include <typeinfo>

namespace OCR::IO {
using namespace std;
using json = nlohmann::json;

function<void(json &)> open_file(const std::string &filename)
{
    return [&filename](json &j) {

        ifstream fd;
        fd.exceptions(ifstream::badbit);

        try {
            fd.open(filename);
            fd >> j;
        }
        catch (std::exception &e) {
            cout << "Exception opening/reading file: " << filename << "\n";
            throw;
        }
    };
}

} // OCR::IO
