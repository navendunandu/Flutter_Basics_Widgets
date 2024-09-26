import 'package:appbar_widget/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(child: Text("Click Here"), onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
      },),),
    );
  }
}