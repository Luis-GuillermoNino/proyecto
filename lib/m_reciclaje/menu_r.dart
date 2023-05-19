
import 'package:aplicacion/m_reciclaje/inorganico.dart';
import 'package:aplicacion/m_reciclaje/mespecial.dart';
import 'package:aplicacion/m_reciclaje/peligrosos.dart';
import 'package:aplicacion/m_reciclaje/sanitarios.dart';
import 'package:flutter/material.dart';
import 'categoria.dart';
import 'organico.dart';

class MenuReciclaje extends StatefulWidget {
  const MenuReciclaje({Key? key}) : super(key: key);
  @override
  State<MenuReciclaje> createState() => _MenuReciclajeState();
}

class _MenuReciclajeState extends State<MenuReciclaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  const Text("RECICLAJE"),
        titleTextStyle:  const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      //backgroundColor: Colors.white,
      body: GridView.builder(
          itemCount: menu.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8, // Ajusta este valor según tus necesidades
          ),
          //gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 3),
          itemBuilder: (context,index){
            return Container(
                height: 400, width: 200,
                margin: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: ()=> imagenseleccionada(context, index: menu[index].id),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/${menu[index].foto}", width: 110, height: 110,),
                      const SizedBox(height: 20,),
                      Text(menu[index].nombre, textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 30),)
                    ],
                  ),
                )
            );
          }
      ),
    );
  }

  Future<void> imagenseleccionada(BuildContext context, {required int index}) async {
    switch (index) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Organico()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Inorganico()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Sanitarios()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Peligrosos()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MEspecial()));
        break;
    }
  }
}


