import 'package:flutter/material.dart';
import "package:lottie/lottie.dart";
import 'main1.dart';

class Anim extends StatefulWidget {
  const Anim({super.key});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> with TickerProviderStateMixin{
 late final AnimationController _controller;

 @override
  void initState() {
    super.initState();
    _controller=AnimationController(vsync: this);
  }

 @override
   
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network("https://assets6.lottiefiles.com/packages/lf20_AMBEWz.json",
            controller: _controller,
            onLoaded: (compos){
              _controller
              ..duration = compos.duration
              ..forward().then((value)
              {
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => Giris()));
             });
                
  }),


  ],
  ),     
             
    );
        

  }
}