import 'dart:async';
import 'package:aplicacion/paginacomenzar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../edicion/colores.dart';
import 'iniciarsesion.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2),()
    {
      Get.to(PaginaComenzar());
    }
    );
    return Scaffold(
      backgroundColor: Colores.mainColor,
      body: const Center(
        child: Text(
          'Logo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

  }
}
