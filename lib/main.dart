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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: SafeArea(
          child: Container(),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text('This is a Drawer')),),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("Home"),
              subtitle: Text('Home page'),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.home),
            ),
            ListTile(
              onTap: (){},
              title: Text("Setting"),
              subtitle: Text('Setting all'),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              onTap: (){},
              title: Text("Notification"),
              subtitle: Text('Notification menu'),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              onTap: (){},
              title: Text("Display"),
              subtitle: Text('Display details'),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.display_settings),
            ),
          ],
        ),
      ),

    );
  }
}


