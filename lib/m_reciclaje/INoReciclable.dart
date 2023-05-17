import 'package:flutter/material.dart';



class INoReciclable extends StatefulWidget {
  const INoReciclable({Key? key}) : super(key: key);

  @override
  State<INoReciclable> createState() => _INoReciclableState();
}

class _INoReciclableState extends State<INoReciclable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.2,
        toolbarHeight: 120,
        title:  const Text("INORGÁNICO NO RECICLABLE"),
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
