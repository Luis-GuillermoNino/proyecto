import 'package:flutter/material.dart';

import 'MENORGANICO.dart';

class IReciclable extends StatefulWidget {
  const IReciclable({Key? key}) : super(key: key);

  @override
  State<IReciclable> createState() => _IReciclableState();
}

class _IReciclableState extends State<IReciclable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  const Text("INORGÁNICO RECICLABLE"),
        titleTextStyle:  const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
              leading: Image.asset("assets/${menu23[index].foto2}", width: 40, height: 40,),
              title:
              Text(menu23[index].nombre2, textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 15),)


          );
        }, separatorBuilder: (context, index) => const Divider(),itemCount: menu23.length,
        )
    );
  }
}
