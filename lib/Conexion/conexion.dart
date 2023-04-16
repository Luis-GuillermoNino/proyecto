import 'package:mysql1/mysql1.dart';

class Conexion {
  static const _host = 'mydb.ccuyfkw8dp1c.us-east-2.rds.amazonaws.com';
  static const _port = 3306;
  static const _databaseName = 'innova';
  static const _username = 'admin';
  static const _password = 'Peresoso.123';

  static Future<MySqlConnection> getConnection() async {
    final settings = ConnectionSettings(
      host: _host,
      port: _port,
      db: _databaseName,
      user: _username,
      password: _password,
    );
    return await MySqlConnection.connect(settings);
  }
}