
import 'package:flutter/material.dart';

class MEspecial extends StatefulWidget {
  const MEspecial({Key? key}) : super(key: key);
  @override
  State<MEspecial> createState() => _MEspecialState();
}

class _MEspecialState extends State<MEspecial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 100,
        title:  const Text("MANEJO ESPECIAL"),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}
