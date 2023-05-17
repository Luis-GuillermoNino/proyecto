
import 'package:aplicacion/paginaComenzar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'm_reciclaje/menu_r.dart';

void main (){
  runApp(
      const App()
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:menu_reciclaje(),
    );
  }
}