import 'package:aplicacion/m_reciclaje/categoria.dart';
import 'package:flutter/material.dart';

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
        toolbarHeight: 120,
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
                onTap: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/"+Menu[index].foto, width: 200,height: 200,),
                    const SizedBox(height: 20),
                    Text(Menu[index].nombre, textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 40),)
                  ],
                ),
              )
            );
            }
        ),
      ),
    );
  }
}

