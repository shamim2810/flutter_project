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
          child: Center(
            child: LayoutBuilder(
              builder: (context, contrain){
                final width = contrain.maxWidth;
                final height = contrain.maxHeight;
                if(width < 600){
                  return Column(
                    children: [
                      Text('Its a mobile device',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                      ),
                      ),
                      Text('width :- $width'),
                    ],
                  );
                }else if(width < 900 && width > 600){
                  return Column(
                    children: [
                      Text('Its a Tablet device',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text('width :- $width')
                    ],
                  );
                }else{
                  return Column(
                    children: [
                      Text('Its a Desktop device',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.pink,
                        ),
                      ),
                      Text('width :- $width'),
                    ],
                  );
                }
              }
            ),
          ),
      ),
    );
  }
}


