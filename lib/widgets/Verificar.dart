// ignore_for_file: avoid_print

import 'package:aplicacion/InicioSesion/ConfirmarNum.dart';
import 'package:flutter/material.dart';


import '../edicion/colores.dart';

class verificar extends StatelessWidget {
  const verificar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> confirmar()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 47,
        decoration: BoxDecoration(
          color:Colores.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Text(
          'Verificar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
