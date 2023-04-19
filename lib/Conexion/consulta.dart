import 'package:aplicacion/Conexion/conexion.dart';


class Consulta {

  static Future<void> truncateTabla() async {
    final conn = await Conexion.getConnection();
    await conn.query('TRUNCATE TABLE datosRuta');
    await conn.close();
  }

  static Future<Map<String,double>> obtenerCoordernadas(int id) async{
    final conn = await Conexion.getConnection();
    final results = await conn.query(
        'SELECT longitud, latitud FROM `datosRuta` WHERE id = ?', [id]
    );
    await conn.close();
    if(results.isNotEmpty){
      final row = results.first;
      final longitud = row['longitud'] as double;
      final latitud = row['latitud'] as double;
      return {'longitud': longitud, 'latitud': latitud};
    } else {
      throw Exception('No se encontró el registro con el ID $id');
    }
  }

}