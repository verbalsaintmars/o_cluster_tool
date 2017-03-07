/* ******************************
 *
 * Copyleft 2017 Verbalsaint
 * ******************************/

#include "optparse.hpp"

DEFINE_bool(d, true, "Start as daemon.");
DEFINE_string(c, "ocr.json", "Oracle Cluster Reservation(ocr) server config.");
DEFINE_string(l, "log", "Server log location.");
