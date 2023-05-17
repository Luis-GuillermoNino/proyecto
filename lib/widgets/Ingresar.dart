
import 'package:aplicacion/mapa/mapa.dart';
import 'package:flutter/material.dart';
import '../edicion/colores.dart';

class BotonInicio extends StatelessWidget {
  const BotonInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mapa()));
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
            'Ingresar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
        ),
      ),
    );
  }
}
