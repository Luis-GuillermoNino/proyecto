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

final cretib=[
  Listado( "Corrosivo","corrosivo.png"),
  Listado( "Reactivo", "reacrivo.png"),
  Listado( "Explosivo", "explosivo.png"),
  Listado( "Tóxico", "toxico1.png"),
  Listado( "Inflamable ", "inflamable.png"),
];

final biologico=[
  Listado( "Medicamentos caducados","medicamento.png"),
  Listado( "Solventes", "solvente.png"),
  Listado( "Pilas","pilas.png"),
  Listado( "Aerosoles", "aerosol.png") ,
  Listado( "Lámparas fluorescentes","lampara.png"),
  Listado( "Aceite de motor","aceitedecarro.png"),
];
