import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Peligrosos extends StatefulWidget {
  const Peligrosos({Key? key}) : super(key: key);

  @override
  State<Peligrosos> createState() => _PeligrososState();
}

class _PeligrososState extends State<Peligrosos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  const Text("PELIGROSOS"),
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
