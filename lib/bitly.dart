library bitly;

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Bitly {
  final Uri api = Uri.parse('https://api-ssl.bitly.com/v4/shorten');
  String token;
  Bitly(this.token);
  Future<Response> shorten(String longUrl, String domain) async {
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    return await http.post(api,
        headers: headers,
        body: '{ "long_url": "$longUrl", "domain": "$domain"}');
  }
}
