import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alarma extends StatelessWidget {

  const alarma ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title:const Text("Alarma"),
      ),
    );
  }
}
