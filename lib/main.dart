import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _views = <Widget>[
    const Center(
      child: Text('Home is selected',
        style: TextStyle(
          fontSize: 25,
          color: Colors.deepOrange,
        ),
      ),
    ),
    const Center(
      child: Text('Home is Chat',
        style: TextStyle(
          fontSize: 25,
          color: Colors.blue,
        ),
      ),
    ),
    const Center(
      child: Text('Home is Setting',
        style: TextStyle(
          fontSize: 25,
          color: Colors.pinkAccent,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: SafeArea(
          child: _views.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepOrangeAccent,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.blue,),label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.pink,),label: 'Setting'),
          ],
        currentIndex: _selectedIndex,
        onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
        },
      ),
    );
  }
}


