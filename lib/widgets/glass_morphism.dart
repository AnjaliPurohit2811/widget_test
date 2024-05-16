import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'asset/img/bg1.png',
                fit: BoxFit.cover,
              ),
            ),
           Center(
             child: GlassContainer(
               height: 300,
               width: 300,
               border: Border.all(color: Colors.grey.shade800 , width: 1.5),
               blur: 4,
               color: Colors.white.withOpacity(0.4),
               gradient: LinearGradient(colors: [
                 Colors.white.withOpacity(0.2),
                 Colors.black.withOpacity(0.3),
               ],
               begin: Alignment.topLeft,
               end: Alignment.bottomRight),
               child: Center(child: Text('Glass Morphism' , style: TextStyle(color: Colors.white , fontSize: 25),)),
             ),
           )
          ],
        ),
      ),
    );
  }
}
