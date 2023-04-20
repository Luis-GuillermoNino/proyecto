import 'package:aplicacion/m_reciclaje/categoria.dart';
import 'package:aplicacion/m_reciclaje/inorganico.dart';
import 'package:aplicacion/m_reciclaje/mespecial.dart';
import 'package:aplicacion/m_reciclaje/peligrosos.dart';
import 'package:aplicacion/m_reciclaje/sanitarios.dart';
import 'package:flutter/material.dart';
import 'organico.dart';

class menu_reciclaje extends StatefulWidget {
  const menu_reciclaje({Key? key}) : super(key: key);

  @override
  State<menu_reciclaje> createState() => _menu_reciclajeState();
}

class _menu_reciclajeState extends State<menu_reciclaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  Text("RECICLAJE"),
        titleTextStyle:  TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),

      //backgroundColor: Colors.white,
      body: Container(

        child: GridView.builder(
            itemCount: Menu.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            //gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 3),
            itemBuilder: (context,index){
              return Container(
                  height: 3000, width: 30,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 10),
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
                    onTap: ()=> ImagenSeleccionada(context, index: Menu[index].id),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/"+Menu[index].foto, width: 200, height: 200,),
                        SizedBox(height: 20,),
                        Text(Menu[index].nombre, textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 50),)
                      ],
                    ),
                  )
              );
            }
        ),
      ),
    );
  }

  Future<void> ImagenSeleccionada(BuildContext context, {required int index}) async {
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


