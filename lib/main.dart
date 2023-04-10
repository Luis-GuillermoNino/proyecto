import 'package:aplicacion/InicioSesion/SplashS.dart';
import 'package:aplicacion/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//Quieres ir al cine o a comer ahorita que termine la reunión bonita? 
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
      home: SplashView(),
    );
  }
}