import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'homepage.dart';
void main() {
  runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
       initialRoute: 'login',
    
     routes:
      {
        'login':(context) => Login(),
        'register':(context) => Register()
      },),);
}

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}