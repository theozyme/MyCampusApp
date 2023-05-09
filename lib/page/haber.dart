import 'package:flutter/material.dart';

class Haber extends StatefulWidget {
  const Haber({super.key});

  @override
  State<Haber> createState() => _HaberState();
}

class _HaberState extends State<Haber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('haber akis')
        ),
        body: Center(
          child:Text('Haber',style: TextStyle(fontSize: 40))),
    );
  }
}