import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: GridView.builder(
              itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return Image.network('https://thumbs.dreamstime.com/z/battered-blooms-picture-was-taken-early-morning-first-i-hesitated-to-upload-one-due-to-some-91783357.jpg', fit: BoxFit.cover,);
                }),
          )

      ),
    );
  }
}
