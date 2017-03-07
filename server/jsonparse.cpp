#include "jsonparse.hpp"

namespace OCR::JSON {

json parse_json()
{
    json j;
    open_file(OCR_JSON)(j);
    return j;
}
}
