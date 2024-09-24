import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/viewme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Name: Hari"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const ViewMe(),));
              }, child: const Text("Click To View Photo"))
          ],)
        ),
      ),
    );
  }
}