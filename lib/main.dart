import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("My Profile",
        style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),)
      ,centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(17),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Center(child: CircleAvatar(radius: 50,
        backgroundColor: Colors.purpleAccent,),),
        SizedBox(height: 10,),
        Center(child: Text("Saleh Akram Sifat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepPurpleAccent),),)








        ],),),

    );
  }
}