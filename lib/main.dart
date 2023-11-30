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
        title: Text('MediaQuery'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: SafeArea(
          child: Container(
            height: height,
            width: width,
            color: Colors.brown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Height :- $height', style: TextStyle(fontSize: width*0.05),),
                Text('Width :- $width',style: TextStyle(fontSize: width*0.05),),
              ],
            ),
          ),
      ),
    );
  }
}


