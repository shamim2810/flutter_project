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

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: RichText(
                text: TextSpan(
                  text: 'Do you have account?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In!',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      )
                    )
                  ]
                ),

            ),
          )
      ),
    );
  }
}


