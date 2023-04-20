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
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  Text("INORGÁNICO"),
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
            itemCount: Menu2.length,
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
                        Image.asset("assets/"+Menu2[index].foto, width: 200, height: 200,),
                        SizedBox(height: 20,),
                        Text(Menu2[index].nombre, textAlign: TextAlign.center,
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
  }