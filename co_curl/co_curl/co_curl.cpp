#include <co_curl/co_curl.hpp>

#include <ostream>
#include <stdexcept>

using namespace std;

namespace co_curl
{
  void say_hello (ostream& o, const string& n)
  {
    if (n.empty ())
      throw invalid_argument ("empty name");

    o << "Hello, " << n << '!' << endl;
  }
}
