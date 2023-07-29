#pragma once

#include <iosfwd>
#include <string>

#include <co_curl/export.hpp>

namespace co_curl
{
  // Print a greeting for the specified name into the specified
  // stream. Throw std::invalid_argument if the name is empty.
  //
  CO_CURL_SYMEXPORT void
  say_hello (std::ostream&, const std::string& name);
}
