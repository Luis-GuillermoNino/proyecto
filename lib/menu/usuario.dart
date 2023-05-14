import 'package:aplicacion/InicioSesion/IniciarSesion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Clase usuario, contiene las características del apartado del usuario en el menú
class usuario extends StatelessWidget {
  const usuario({
    super.key,
  });
  void _irAPaginaDeUsuario(BuildContext context) {
    // Define aquí la navegación a la página de usuario
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=> IniciarSes())),
      child: const Padding(
        padding: EdgeInsets.only(left: 9),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white60,
            child: Icon(
              CupertinoIcons.person,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Nombre del usuario',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            'teléfono',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

