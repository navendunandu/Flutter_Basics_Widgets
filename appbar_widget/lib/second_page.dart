import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Image.asset("Assets/Screenshot.png"),
          ElevatedButton(onPressed: (){}, child: Text("Go Back"))
        ],
      ),),
    );
  }
}