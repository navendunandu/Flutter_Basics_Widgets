

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  double result = 0;
  void sum(){
    double number1 =double.parse(num1.text);
    double number2 =double.parse(num2.text);
    double total = number1 + number2;
    print("Total: $total");
    setState(() {
      result = total;
    });
  }

  void sub(){
    double number1 =double.parse(num1.text);
    double number2 =double.parse(num2.text);
    double total = number1 - number2;
    print("Total: $total");
    setState(() {
      result = total;
    });

  }

  void mult(){
    double number1 =double.parse(num1.text);
    double number2 =double.parse(num2.text);
    double total = number1 * number2;
    print("Total: $total");
    setState(() {
      result = total;
    });

  }

  void div(){
    double number1 =double.parse(num1.text);
    double number2 =double.parse(num2.text);
    double total = number1 / number2;
    print("Total: $total");
    setState(() {
      result = total;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: num1,
                decoration: InputDecoration(
                  hintText: "Number 1",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: num2,
                decoration: InputDecoration(
                  hintText: "Number 2",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    sum();
                  }, child: Text("+")),
                  ElevatedButton(onPressed: (){
                    sub();
                  }, child: Text("-")),
                  ElevatedButton(onPressed: (){
                    mult();
                  }, child: Text("*")),
                  ElevatedButton(onPressed: (){
                    div();
                  }, child: Text("/")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Result: ${result.toString()}")
            ],
          ),
        ),
      ),
    );
  }
}