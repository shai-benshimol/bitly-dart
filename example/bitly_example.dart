import 'package:bitly/bitly.dart';

void main(List<String> args) {
  Bitly('<-TOKEN->')
      .shorten('https://dev.bitly.com', 'bit.ly')
      .then((value) => print(value.body))
      .onError((error, stackTrace) => print(error));
}