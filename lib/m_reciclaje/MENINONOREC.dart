import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listado {
  //int id;
  String nombre2;
  String foto2;
  //final Function() Presionar;
  Listado( this.nombre2, this.foto2, );

  Widget buildTexto(BuildContext context){
    return Text(
      nombre2,
      style:  const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

final menu24=[
  Listado( "Empaques metalizados o aluminio","papelAluminio.png"),
  Listado( "Bolsas de plástico", "bolsaplastico.png"),
  Listado( "Unicel", "unicel.png"),
  Listado( "Colillas de ceigarro ", "colillas.png"),
  Listado( "Chicles ", "chicle.png"),
  Listado( "Cualquier aplicación del celofán","celofan.png"),
  Listado( "Globos", "globos.png"),
  Listado( "Guantes de latex", "guantes.png"),
  Listado( "Cepillos de dientes ", "cafe.png"),
  Listado( "Tubos de pasta dental", "hoja.png"),
  Listado( "Juguetes","juguete.png"),
];