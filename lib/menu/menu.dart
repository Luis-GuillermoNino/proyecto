import 'package:aplicacion/mapa/mapa.dart';
import 'package:aplicacion/paginaComenzar.dart';
import 'package:aplicacion/paginas_menu/Inicio.dart';
import 'package:aplicacion/paginas_menu/alarma.dart';
import 'package:aplicacion/paginas_menu/configuracion.dart';
import 'package:aplicacion/paginas_menu/reciclaje.dart';
import 'package:aplicacion/menu/usuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../edicion/colores.dart';
import '../m_reciclaje/menu_r.dart';
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
        body: Stack(
          children: [
            Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/fondoMapa.jpeg'),
        fit: BoxFit.cover,
            )
          )
            ),
            Container(
              decoration: BoxDecoration(
                color: Colores.mainColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              width: 288,
              height: double.infinity,
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
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white,),),

                    listamenu(
                      nombre: 'Inicio',
                      icono: CupertinoIcons.person,
                      Presionar: () => onItemPressed(context, index: 0),
                    ),

                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white,),),

                    listamenu(
                      nombre: 'Alarma',
                      icono: CupertinoIcons.clock,
                      Presionar: () => onItemPressed(context, index: 1),
                    ),

                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white24,),),

                    listamenu(
                      nombre: 'Reciclaje',
                      icono: CupertinoIcons.info,
                      Presionar: () => onItemPressed(context, index: 2),
                    ),

                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white24,),),

                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 20, bottom: 16),
                      child: Text(
                        "Otros".toUpperCase(),
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white24,),),

                    listamenu(
                      nombre: 'Configuración',
                      icono: CupertinoIcons.settings,
                      Presionar: () => onItemPressed(context, index: 3),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 24),
                      child: Divider(height: 1, color: Colors.white24,),),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onItemPressed(BuildContext context, {required int index}) async {
    switch (index) {
      case -1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Mapa()));
        break;
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const inicio()));
        break;
      case 1:
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => const alarma()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const menu_reciclaje()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const configuracion()));
        break;
    }
  }
}

