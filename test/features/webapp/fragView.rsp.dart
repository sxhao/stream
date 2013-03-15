//Auto-generated by RSP Compiler
//Source: test/features/fragView.rsp.html
part of features;

/** Template, fragView, for rendering the view. */
void fragView(HttpConnect connect, {Map infos: const {}, header, footer}) { //2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  if (header != null) { //if#2

    response.addString("""  """); //#3

    response.addString(stringize(header)); //#3


    response.addString("""

"""); //#3
  } //if

  response.addString("""
<ul>
  <li>This is a fragment and generated dynamically</li>
"""); //#5

  for (var type in infos.keys) { //for#7

    response.addString("""    <li>"""); //#8

    response.addString(stringize(type)); //#8


    response.addString("""

      <ol>
"""); //#8

    for (var name in infos[type]) { //for#10

      response.addString("""        <li>"""); //#11

      response.addString(stringize(name)); //#11


      response.addString("""
</li>
"""); //#11
    } //for

    response.addString("""
      </ol>
    </li>
"""); //#13
  } //for

  response.addString("""
</ul>
"""); //#16

  if (footer != null) { //if#17

    response.addString("""  """); //#18

    response.addString(stringize(footer)); //#18


    response.addString("""

"""); //#18
  } //if

  connect.close();
}
