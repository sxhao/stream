//Auto-generated by RSP Compiler
//Source: test/features/includerView.rsp.html
part of features;

/** Template, includerView, for rendering the view. */
void includerView(HttpConnect connect) { //7
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");
final infos = {
  "fruits": ["apple", "orange", "lemon"],
  "cars": ["bmw", "audi", "honda"]
};

  response.write("""

<html>
  <head>
    <title>Test of Include</title>
    <link href="/theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <ul>
      <li>You shall see something inside the following two boxes.</li>
    </ul>
    <div style="border: 1px solid blue">
"""); //#7

  connect.include("""/frag.html""", success: () { //#18

    response.write("""
    </div>
    <div style="border: 1px solid red">
"""); //#19

    fragView(connect.server.connectForInclusion(connect, success: () { //#21

      response.write("""
    </div>
    <div style="border: 1px solid red">
"""); //#22

      var _0 = new StringBuffer(); _cs_.add(connect); //var#25
      connect = new HttpConnect.buffer(connect, _0); response = connect.response;

      response.write("""
  <h1>This is a header</h1>
  <p>Passed from the includer for showing """); //#26

      response.write(nnstr(infos)); //#27


      response.write("""
</p>
"""); //#27

      connect = _cs_.removeLast(); response = connect.response;

      var _1 = new StringBuffer(); _cs_.add(connect); //var#29
      connect = new HttpConnect.buffer(connect, _1); response = connect.response;

      response.write("""
  <h2>This is a footer</h2>
  <p>It also includes another page:</p>
"""); //#30

      connect.include("""/frag.html""", success: () { //#32

        connect = _cs_.removeLast(); response = connect.response;

        fragView(connect.server.connectForInclusion(connect, success: () { //#24

          response.write("""
    </div>
  </body>
</html>
"""); //#35

          connect.close();
        }), infos: infos, header: _0.toString(), footer: _1.toString()); //end-of-include
      }); //end-of-include
    }), infos: infos); //end-of-include
  }); //end-of-include
}
