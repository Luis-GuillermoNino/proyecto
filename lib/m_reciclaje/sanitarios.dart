import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sanitarios extends StatefulWidget {
  const Sanitarios({Key? key}) : super(key: key);

  @override
  State<Sanitarios> createState() => _SanitariosState();
}

class _SanitariosState extends State<Sanitarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  Text("SANITARIOS"),
        titleTextStyle:  TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),


    );
  }
}

