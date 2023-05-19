import 'package:flutter/material.dart';
import 'categoriaInorganica.dart';


class Inorganico extends StatefulWidget {
  const Inorganico({Key? key}) : super(key: key);

  @override
  State<Inorganico> createState() => _InorganicoState();
}

class _InorganicoState extends State<Inorganico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  const Text("INORGÁNICO"),
        titleTextStyle:  const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),

      //backgroundColor: Colors.white,
      body: GridView.builder(
          itemCount: menu2.length,
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
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/${menu2[index].foto}", width: 110, height: 110,),
                      const SizedBox(height: 20,),
                      Text(menu2[index].nombre, textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 30),)
                    ],
                  ),
                )
            );
          }
      ),
    );
  }
  }