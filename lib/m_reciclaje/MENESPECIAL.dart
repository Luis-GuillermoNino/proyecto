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

final menu28=[
  Listado( "Llantas","comi.png"),
  Listado( "Escombro", "huevo.png"),
  Listado( "Electrónicos", "taco.png"),
  Listado( "Muebles ""PELIGROSOS", "cabello.png"),
  Listado( "Aceite vegetal ", "fuego.png"),
];