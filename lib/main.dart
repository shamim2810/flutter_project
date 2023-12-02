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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.grey,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Flutter'),
                  centerTitle: true,
                  background: Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e0ab53af-37d7-44ff-846f-868de437ef1d/dg7v2gi-dad01cb0-8e3d-43a8-9d22-c3fe657376d3.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UwYWI1M2FmLTM3ZDctNDRmZi04NDZmLTg2OGRlNDM3ZWYxZFwvZGc3djJnaS1kYWQwMWNiMC04ZTNkLTQzYTgtOWQyMi1jM2ZlNjU3Mzc2ZDMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.EeK_Q-K1UDw9E4-37Hm8TlHlnxKJZU-STZUZ0eZNsBM',
                    fit: BoxFit.fill,
                  ),
                ),
                leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.menu,color: Colors.white,),),
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white,),),
                ],
              ),

              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index){
                    return ListTile(
                      leading: Text('$index'),
                      trailing: Icon(Icons.arrow_forward),
                      title: Text('Capital city of Dhaka'),
                      subtitle: Text('Bangladesh'),
                    );
                  },
                      childCount: 50,
                  ),
              ),
            ],
          ),
      ),
    );
  }
}


