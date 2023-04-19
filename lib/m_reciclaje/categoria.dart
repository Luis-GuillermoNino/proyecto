import 'package:flutter/cupertino.dart';

class Categoria {
  int id;
  String nombre;
  String foto;
  Categoria(this.id, this.nombre, this.foto);

  Widget buildTexto(BuildContext context){
    return Text(
      nombre,
      style:  TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.bold
      ),
    );
  }
}


final Menu=[
  Categoria(1, "Orgánico","comida.png"),
  Categoria(2, "Inorgánico", "inorganicoNoreciclable.png"),
  Categoria(3, "Sanitarios", "Sanitarios.png"),
  Categoria(4, "Residuos Peligrosos", "Peligrosos.png"),
  Categoria(5, "Manejo especial", "ManejoEspecial.png"),
];

