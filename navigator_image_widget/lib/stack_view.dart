import 'package:flutter/material.dart';

class StackViewScreen extends StatelessWidget {
  const StackViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Stack(
        children: [
         Container(
           decoration: const BoxDecoration(color: Colors.amber,
           shape: BoxShape.circle
           ),
           width: 200,
           height: 200,
         ),
         Positioned(
          right: 20,
          top: 50,
           child: Container(
             decoration: const BoxDecoration(color: Colors.blue,
             shape: BoxShape.circle
             ),
             width: 150,
             height: 150,
           ),
         ),
         Container(
           decoration: const BoxDecoration(color: Colors.green,
           shape: BoxShape.circle
           ),
           width: 100,
           height: 100,
         ),
         Positioned(
          left: 20,
          top: 50,
           child: Container(
             decoration: const BoxDecoration(color: Colors.red,
             shape: BoxShape.circle
             ),
             width: 50,
             height: 50,
           ),
         )
        ],
      ),
    ),);
  }
}