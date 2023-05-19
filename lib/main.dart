import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app.dart';
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
      home:MenuReciclaje(),
    );
  }
}
