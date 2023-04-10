import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inicio extends StatelessWidget {

  const inicio ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title:const Text("Inicio"),
      ),
    );
  }
}
