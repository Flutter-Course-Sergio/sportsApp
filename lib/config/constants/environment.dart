import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String mySportsmonkKey =
      dotenv.env['MY_SPORTSMONK_KEY'] ?? 'No hay API key';
}
