import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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


  late int _counter = 0;

  void _increaseCounter() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
    });
    prefs.setInt('Counter', _counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCounterFromSharedPreference();
  }

  void loadCounterFromSharedPreference()async{
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _counter = prefs.getInt('Counter') ?? 0;
    });
  }

  void removeCounterFromSharedPrference()async{
    final prefs = await SharedPreferences.getInstance();
    
    final success = await prefs.remove('Counter');
    
    print(success);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SharedPreferences'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body:SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counter value is:- $_counter'),
                SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: _increaseCounter,
                    child: Text('Click here')),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: removeCounterFromSharedPrference,
                    child: Text('Delete')),
              ],
            ),
          )
      ),
    );
  }
}


