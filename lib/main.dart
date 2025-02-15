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

class HomeActivity extends StatefulWidget{
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  bool isChecked = false;

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
        Center(child: Text("Saleh Akram Sifat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepPurpleAccent),),),

          SizedBox(height: 20,),
          Row(
            children: [Icon(Icons.email),SizedBox(width: 5,), Text("Salehakramsifat@gmail.com", style: TextStyle(fontSize: 15),)],),
          SizedBox(height: 20,),
          TextField(decoration:  InputDecoration(labelText: "Enter your name",border: OutlineInputBorder()),),

          SizedBox(height: 5,),
          CheckboxListTile(title:Text("I Agree to this terms"),value: isChecked, onChanged: (bool? value){
            setState((){
              isChecked=value!;
            }
            );
          })

        ],),),

    );
  }
}