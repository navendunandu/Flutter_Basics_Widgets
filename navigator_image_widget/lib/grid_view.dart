import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/stack_view.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left_sharp,
              color: Colors.green[300],
              size: 42,
            )),
            title: Text('GridView Page'),
      actions: [
        IconButton(
            onPressed: () {
              // Implement your logic for sharing here
            },
            icon: Icon(Icons.share, color: Colors.green[300], size: 42),
        ),
        IconButton(
            onPressed: () {
              // Implement your logic for sharing here
            },
            icon: Icon(Icons.account_box, color: Colors.green[300], size: 42),
        ),
      ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StackViewScreen(),
                  ));
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset("assets/Screenshot.png"),
                  const Text(
                    'Item 1',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset("assets/Screenshot.png"),
                const Text(
                  'Item 1',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
