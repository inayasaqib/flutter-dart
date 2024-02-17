import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
 }
 class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
   Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),   
        ),
      drawer:Drawer(
          child: Column(
                 children: [
        Container(
            child:const DrawerHeader(
                    margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
                child: Column(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        backgroundImage: NetworkImage(
                           "https://logowik.com/content/uploads/images/flutter5786.jpg"
                        ),
                      ),
                      Text("Flutter")
                      ]
                      ),
            )
          ),
      const ListTile(leading: Icon(Icons.man), title: Text("Profile"), trailing: Icon(Icons.arrow_right),),
        const ListTile(leading: Icon(Icons.notifications_none), title: Text("Notifications"), trailing: Icon(Icons.arrow_right),),
         const ListTile(leading: Icon(Icons.settings), title: Text("Settings"), trailing: Icon(Icons.arrow_right),),
         const ListTile(leading: Icon(Icons.lock), title: Text("Log Out"), trailing: Icon(Icons.arrow_right),),
                 ],
          ),
        )
      ),
    ); 
   }
 }