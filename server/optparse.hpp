/* ******************************
 * Copyleft 2017 Verbalsaint
 * ******************************/

#pragma once
#include <gflags/gflags.h>
#include <iostream>
#include <string>

DECLARE_bool(d);
DECLARE_string(c);
DECLARE_string(l);

template <typename T, typename U> void optparse(T argc, U argv) {
    using namespace std;

    string usage{argv[0]};
    usage += R"( -d "daemonize" )";
    usage += R"(-c "config file location" )";
    usage += R"(-l "logfile location")";
    string version{R"(1.0.0)"};

    gflags::SetUsageMessage(usage);
    gflags::SetVersionString(version);
    gflags::ParseCommandLineFlags(&argc, &argv, true);
}
