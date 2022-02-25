import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'http://192.168.100.48:3000/api'
      : 'http://192.168.100.48:3000/api';

  static String socketUrl = Platform.isAndroid
      ? 'http://localhost:10.0.2.2:3000'
      : 'http://localhost:3000';
}
