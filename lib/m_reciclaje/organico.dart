import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organico extends StatefulWidget {
  const Organico({Key? key}) : super(key: key);

  @override
  State<Organico> createState() => _OrganicoState();
}

class _OrganicoState extends State<Organico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  const Text("ORGÁNICO"),
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
