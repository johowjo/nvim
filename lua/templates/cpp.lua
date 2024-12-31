local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- Define snippets
return {
  s(
    "cp",
    fmt(
      [[ 
      #pragma GCC Optimize("Ofast")
      #include <iostream>
      #include <vector>
      #include <algorithm>
      #include <cstring>
      #define IOIOOIOIO ios::sync_with_stdio(0); cin.tie(0); cout.tie(0)
      #define int long long
      #define pii pair<int, int>
      #define mp make_pair
      #define ff first
      #define ss second
      #define pb push_back
      #define yy "yEs\n"
      #define nn "nO\n"
      using namespace std;

      void solve(){{

      }}

      signed main(){{
        IOIOOIOIO;
        int t; cin >> t;
        while(t--) solve();
        return 0;
      }}
      ]],
      {
      }
    )
  ),
}
