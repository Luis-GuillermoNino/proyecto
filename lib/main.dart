import 'package:aplicacion/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(

      debugShowCheckedModeBanner: false,
home: MyApp()
  )
  );
}




