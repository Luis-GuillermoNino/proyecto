
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
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  const Text("PELIGROSOS"),
        titleTextStyle:  const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),

    );
  }
}
