import 'package:flutter/cupertino.dart';

class catInorganic {
  int id;
  String nombre;
  String foto;
  catInorganic(this.id, this.nombre, this.foto);

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


final Menu2=[
  catInorganic(1, "RECICLABLE","comida.png"),
  catInorganic(2, "NO RECICLABLE", "inorganicoNoreciclable.png"),
];

