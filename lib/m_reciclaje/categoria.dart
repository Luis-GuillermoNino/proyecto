
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Categoria {
  int id;
  String nombre;
  String foto;

  Categoria(this.id, this.nombre, this.foto);
}

final Menu=[
  Categoria(1, Text("Orgánico",style: TextStyle(fontSize: 20),) as String, "comida.png"),
  /*Categoria(2, "Inorgánico", "inorganicoNoreciclable.png"),
  Categoria(3, "Sanitarios", "personamarcador.png"),
  Categoria(4, "Residuos Peligrosos", "Peligrosos.png"),
  Categoria(5, "Manejo especial", "ManejoEspecial.png"),*/
];

