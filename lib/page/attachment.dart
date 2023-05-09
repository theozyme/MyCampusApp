import 'package:flutter/material.dart';

class Attachment extends StatefulWidget {
  const Attachment({super.key});

  @override
  State<Attachment> createState() => _AttachmentState();
}

class _AttachmentState extends State<Attachment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //title: Text('Attachment')
        ),
        body: Center(
          child:Text('Attachment',style: TextStyle(fontSize: 40))),
    );
  }
}