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

final menu26=[
  Listado( "Papel higiénico","comi.png"),
  Listado( "Pañales", "huevo.png"),
  Listado( "Toallas sanitarias", "taco.png"),
  Listado( "Tampones ""PELIGROSOS", "cabello.png"),
  Listado( "Cotonetes ", "fuego.png"),
  Listado( "Rastrillos","hueso.png"),
  Listado( "Preservativos", "panuelo.png"),
  Listado( "Material de Curació", "te.png"),
];