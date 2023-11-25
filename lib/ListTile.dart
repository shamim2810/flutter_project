import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.message),
                title: Text('A beautyfull'),
                subtitle: Text('Bangladesh'),
                trailing: Icon(Icons.delete),
                iconColor: Colors.pink,
                textColor: Colors.deepPurple,
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('A beautyfull'),
                subtitle: Text('Bangladesh'),
                trailing: Icon(Icons.delete),
                iconColor: Colors.pink,
                textColor: Colors.deepPurple,
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('A beautyfull'),
                subtitle: Text('Bangladesh'),
                trailing: Icon(Icons.delete),
                iconColor: Colors.pink,
                textColor: Colors.deepPurple,
              ),

            ],
          ),

      ),
    );
  }
}
