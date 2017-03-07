/* ******************************
 * Copyleft 2017 Verbalsaint
 * ******************************/

#pragma once
#include "constants.hpp"
#include "io.hpp"
#include <nlohmann/json.hpp>

namespace OCR::JSON {
using json = nlohmann::json;
using namespace OCR::CONSTANTS;
using namespace OCR::IO;

json parse_json();

} // OCR::JSON
