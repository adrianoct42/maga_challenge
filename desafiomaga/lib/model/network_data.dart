import 'dart:convert';
import 'package:http/http.dart' as http;

// Weather API Network Helper
// Passe a URL da WheatherAPI para esse classe!

class NetworkData {
  NetworkData(this.url);

  final String url;

  // GET das coordenadas geográficas da chamada da API:
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    // Tratamento de ERROS:
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
