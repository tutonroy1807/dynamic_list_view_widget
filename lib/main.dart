

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  var MyItems = [
    {"img":"https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", "title": "rabiil hasan"},
    {"img":"https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", "title": "prosenjit roy"},
    {"img":"https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", "title": "tuton roy"},
    {"img":"https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", "title": "hasan mahumud"}
  ];

  MySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListViewBuilder"),
      titleSpacing: 30,
      ),
      // use grid view in dynamic
     body: GridView.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         crossAxisSpacing: 1,
         childAspectRatio: 1.8
       ),
       itemCount: MyItems.length, // myitem length is listview length.
       itemBuilder: (context,index){
         return GestureDetector(
           onTap: (){
             MySnackBar(context, MyItems[index]["title"]);
           },
           child: Container(
             margin: EdgeInsets.all(10),
             width: double.infinity,
             height: 230,
             child: Image.network(MyItems[index]["img"]!, fit: BoxFit.fill,),
           ),
         );
       },
     ),

    );
  }
}

