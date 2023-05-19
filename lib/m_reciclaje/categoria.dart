import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoria {
  int id;
  String nombre;
  String foto;
  //final Function() Presionar;
  Categoria(this.id, this.nombre, this.foto, );

  Widget buildTexto(BuildContext context){
    return Text(
      nombre,
      style:  const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

final menu=[
  Categoria(1, "ORGÁNICO","organico.png"),
  Categoria(2, "INORGÁNICO", "plastic.png"),
  Categoria(3, "SANITARIOS", "aguajs.png"),
  Categoria(4, "RESIDUOS ""PELIGROSOS", "toxicos.png"),
  Categoria(5, "MANEJO ESPECIAL", "ManejoEspecial.png"),
];