A composable, Future-based library for bitly api.

## Usage

The easiest way to use this library is via shorten method. this allow you to make individual HTTP requests and get a bitly async future response success or faile:

```dart
import 'package:bitly/bitly.dart';

void main(List<String> args) {
  Bitly('<-TOKEN->')
      .shorten('https://dev.bitly.com', 'bit.ly')
      .then((value) => print(value.body))
      .onError((error, stackTrace) => print(error));
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/shai-benshimol/bitly-dart
