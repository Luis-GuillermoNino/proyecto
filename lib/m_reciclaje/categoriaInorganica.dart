
import 'package:flutter/cupertino.dart';

class CatInorganic {
  int id;
  String nombre;
  String foto;
  CatInorganic(this.id, this.nombre, this.foto);

  Widget buildTexto(BuildContext context){
    return Text(
      nombre,
      style:  const TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.bold
      ),
    );
  }
}


final menu2=[
  CatInorganic(1, "RECICLABLE","comida.png"),
  CatInorganic(2, "NO RECICLABLE", "inorganicoNoreciclable.png"),
];

