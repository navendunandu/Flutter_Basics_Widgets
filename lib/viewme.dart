import 'package:flutter/material.dart';

class ViewMe extends StatelessWidget {
  const ViewMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Image.asset('assets/Screenshot.png', width: 300,
            ),
      ),
    );
  }
}