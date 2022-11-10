import "package:http/http.dart" as http;
import 'package:layout/widget/model.dart';

var base = "https://mocki.io";

getPost() async {
  Uri url = Uri.parse("$base/v1/3cd2029b-3511-4c6c-b18f-c9361c78ec95");
  var res = await http.get(url);

  try {
    if (res.statusCode == 200) {
      var data = postsModelFromJson(res.body);
      return data;
    } else {
      print("Erorr deuring connection");
    }
  } catch (e) {
    print(e.toString);
  }
}
