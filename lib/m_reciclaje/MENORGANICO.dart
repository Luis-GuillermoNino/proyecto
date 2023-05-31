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

final menu23=[
  Listado( "Cáscaras de frutas y verduras","comi.png"),
  Listado( "Cascarón de huevo", "huevo.png"),
  Listado( "Restos de comida", "taco.png"),
  Listado( "Cabello ", "cabello.png"),
  Listado( "Cenizas ", "fuego.png"),
  Listado( "Huesos","hueso.png"),
  Listado( "Servilletas de papel", "panuelo.png"),
  Listado( "Bolsas de té", "te.png"),
  Listado( "Filtros de café ", "cafe.png"),
  Listado( "Pasto", "hoja.png"),
  Listado( "Ramas","rama.png"),
  Listado( "Hojarasca", "hoja.png"),
  Listado( "Pan ", "pan.png"),
  Listado( "Tortillas ", "tortillas.png"),
  Listado( "Aserrin", "sierra.png"),
  Listado( "Bagazo de frutas", "naranja.png"),

];