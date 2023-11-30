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
        title: Text('Elevated Button'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Elevated Button'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle: TextStyle(fontSize: 15),
                      onPrimary: Colors.red,
                      elevation: 20,
                      shadowColor: Colors.deepOrange,
                      side: BorderSide(
                        color: Colors.pink,
                        width: 5,
                      )
                    ),
                ),
                SizedBox(height: 10,),
                ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.settings),
                    label: Text('Setting'),
                )
              ],
            ),
          )
      ),
    );
  }
}


