
import 'package:flutter/material.dart';


import 'MENSANITARIOS.dart';

class Sanitarios extends StatefulWidget {
  const Sanitarios({Key? key}) : super(key: key);

  @override
  State<Sanitarios> createState() => _SanitariosState();
}

class _SanitariosState extends State<Sanitarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  const Text("SANITARIOS"),
        titleTextStyle:  const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
              leading: Image.asset("assets/${menu26[index].foto2}", width: 40, height: 40,),
              title:
              Text(menu26[index].nombre2, textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 15),)


          );
        }, separatorBuilder: (context, index) => const Divider(),itemCount: menu26.length,
        )

    );
  }
}

