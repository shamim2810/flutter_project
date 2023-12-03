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
      debugShowCheckedModeBanner: false,
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
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop Down Button'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
            child: DropdownButton(
              value: dropDownValue,
              hint: Text('Select the City..',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
                style: TextStyle(fontSize: 20, color: Colors.black),
                icon: Icon(Icons.keyboard_arrow_down),
                dropdownColor: Colors.orange,
                isExpanded: true,
                items: [
                  DropdownMenuItem(
                      child: Text('Dhaka'),
                    value: 'Dhaka',
                  ),
                  DropdownMenuItem(
                    child: Text('Comilla'),
                    value: 'Comilla',
                  ),
                  DropdownMenuItem(
                    child: Text('Barishal'),
                    value: 'Barishal',
                  ),
                  DropdownMenuItem(
                    child: Text('Khulna'),
                    value: 'Khulna',
                  ),
                  DropdownMenuItem(
                    child: Text('Rajshahi'),
                    value: 'Rajshahi',
                  ),
                ],
                onChanged: (String? value){
                  setState(() {
                    dropDownValue = value;
                  });
                }
            ),
          ) 
      ),
    );
  }
}


