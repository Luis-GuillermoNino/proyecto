import 'package:flutter/material.dart';

class listamenu extends StatelessWidget {
  const listamenu({Key? key, required this.nombre, required this.icono, required this.Presionar}) : super(key: key);
  final String nombre; 
  final IconData icono;
  final Function() Presionar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Presionar,//Funcionalidad de botón
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Icon(icono, size: 20, color: Colors.black), //Características del icono
                const SizedBox(width: 25,height: 25,),
                Text(nombre, style: const TextStyle(color: Colors.black),) //Características del texto que describe el icono
              ],
            ),
          ),
        //),
      ),
    );
  }
}
