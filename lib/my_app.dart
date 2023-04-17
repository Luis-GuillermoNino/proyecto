import 'package:aplicacion/mapa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B APP',
      home: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: Image.asset(
                'assets/puente.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 650),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 80),
                          backgroundColor: HexColor('98cc78')),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                WillPopScope(
                                  onWillPop: () async {
                                    return false;
                                  },
                                  child: const Mapa(),
                                ),
                          ),
                        );
                      },
                      child: const Text("Comenzar!",
                      style: TextStyle(fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}