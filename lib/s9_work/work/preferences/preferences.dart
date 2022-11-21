import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _gmail = '';
  static String _telefono = '';
  static String _twitter = '';
  static String _behance = '';
  static String _facebook = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //GET & SET

  //IMG
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //Nombre
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //Apellido
  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }

  //Gmail
  static String get gmail {
    return _prefs.getString('gmail') ?? _gmail;
  }

  static set gmail(String gmail) {
    _gmail = gmail;
    _prefs.setString('gmail', gmail);
  }

  //Telefono
  static String get telefono {
    return _prefs.getString('telefono') ?? _telefono;
  }

  static set telefono(String telefono) {
    _telefono = telefono;
    _prefs.setString('telefono', telefono);
  }

  //Twitter
  static String get twitter {
    return _prefs.getString('twitter') ?? _twitter;
  }

  static set twitter(String twitter) {
    _twitter = twitter;
    _prefs.setString('twitter', twitter);
  }

  //Behance
  static String get behance {
    return _prefs.getString('behance') ?? _behance;
  }

  static set behance(String behance) {
    _behance = behance;
    _prefs.setString('behance', behance);
  }

  //Facebook
  static String get facebook {
    return _prefs.getString('facebook') ?? _facebook;
  }

  static set facebook(String facebook) {
    _facebook = facebook;
    _prefs.setString('facebook', facebook);
  }
}