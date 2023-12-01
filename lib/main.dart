import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height/3;
    var width = MediaQuery.of(context).size.width/2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: 400,
              color: Colors.pink,
              child: FittedBox(
                child: Text("Bangladesh is a Butiful Country",style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ),
      ),
    );
  }
}


