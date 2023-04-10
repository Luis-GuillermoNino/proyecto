import 'package:aplicacion/mapa.dart';
import 'package:aplicacion/my_app.dart';
import 'package:aplicacion/usuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edicion/colores.dart';
import 'lista.dart';


//CLASE DONDE SE DEFINE EL CONTENIDO DEL MENÚ
class menulateral extends StatelessWidget {
  const menulateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //Envuelve el contenedor en GestureDetector
      onTap: () => onItemPressed(context, index: -1), //Llama a la función onItemPressed con un índice de -1
      child: Scaffold(
        backgroundColor: Colores.colorfondo,
        body: Container(
          width: 288,
          height: double.infinity,
          color: const Color(0xFFB5DA66),
          child: SafeArea(
            child: Column(
              children: [
                const usuario(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 20, bottom: 16),
                  child: Text(
                    "Buscar".toUpperCase(),
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white70),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 24),
                  child: Divider(height: 1, color: Colors.white24,),),

                listamenu(
                  nombre: 'Inicio',
                  icono: CupertinoIcons.person,
                  Presionar: () => onItemPressed(context, index: 0),
                ),

                const Padding(padding: EdgeInsets.only(left: 24),
                  child: Divider(height: 1, color: Colors.white24,),),

                listamenu(
                  nombre: 'Alarma',
                  icono: CupertinoIcons.clock,
                  Presionar: () => onItemPressed(context, index: 0),
                ),

                const Padding(padding: EdgeInsets.only(left: 24),
                  child: Divider(height: 1, color: Colors.white24,),),

                listamenu(
                  nombre: 'Reciclaje',
                  icono: CupertinoIcons.info,
                  Presionar: () => onItemPressed(context, index: 0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 20, bottom: 16),
                  child: Text(
                    "Otros".toUpperCase(),
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white70),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 24),
                  child: Divider(height: 1, color: Colors.white24,),),

                listamenu(
                  nombre: 'Configuración',
                  icono: CupertinoIcons.settings,
                  Presionar: () => onItemPressed(context, index: 0),
                ),
                const Padding(padding: EdgeInsets.only(left: 24),
                  child: Divider(height: 1, color: Colors.white24,),),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onItemPressed(BuildContext context, {required int index}) async {
    switch (index) {
      case -1: //Agrega un case para el índice -1
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Mapa()));
        break;
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp()));
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
    }
  }
}

