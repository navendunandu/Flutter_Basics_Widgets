
import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/grid_view.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children:[
           ListTile(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const GridViewPage(),));
            },
            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png',),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     const ListTile(

            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Screenshot.png'),
            ),
            title: Text('Dev'),
            subtitle:Text('Hi') ,
            trailing: Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png'),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
                     ListTile(

            leading: CircleAvatar(
              child: Image.asset('assets/Screenshot.png',),
            ),
            title: const Text('Dev'),
            subtitle:const Text('Hi') ,
            trailing: const Text("01-10-24"),

            
          ),
        ],
      )
   
    );
  }
}