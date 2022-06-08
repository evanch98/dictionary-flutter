import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  late final String urlString;

  Networking(this.urlString);

  Future getData() async {
    var url = Uri.parse(urlString);
    http.Response response = await http.get(url);
    String data = response.body;
    return jsonDecode(data);
  }
}
