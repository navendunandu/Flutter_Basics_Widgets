import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Image.asset("assets/Screenshot.png"),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Go Back"))
        ],
      ),),
    );
  }
}