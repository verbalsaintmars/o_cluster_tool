/* ******************************
 * Copyleft 2017 Verbalsaint
 * ******************************/

#pragma once
#include <fstream>
#include <functional>
#include <iostream>
#include <nlohmann/json.hpp>
#include <string>

namespace OCR::IO {
using json = nlohmann::json;


std::function<void(json &)> open_file(const std::string &filename);
} // OCR::IO
