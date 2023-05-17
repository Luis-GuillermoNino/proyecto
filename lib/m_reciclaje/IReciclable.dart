import 'package:flutter/material.dart';

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

    );
  }
}
