import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashscreen();
  }
  startSplashscreen() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return home();
        })
      );
     }
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
           gradient: LinearGradient (
               begin:  Alignment(0.378, -0.801), 
                 end:  Alignment(0.378, 0.847),
              colors:  <Color>[Color.fromARGB(255, 63, 130, 246), Color.fromARGB(223, 14, 173, 216), Color.fromARGB(0, 253, 254, 255)],
              stops: <double> [0, 0.394, 1],
            )
        ),
        child: Center(
          child: Image.asset('images/gambar/LogoPolsub.png',
          height: 180,),
          
        ),
      ),
    );
  }
}