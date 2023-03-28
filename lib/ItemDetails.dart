// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class ItemDetails extends StatefulWidget {
  const ItemDetails();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<ItemDetails> createState() => _ItemDetails();
}

class _ItemDetails extends State<ItemDetails> {
  bool favorite=false;
  int item=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
               IconButton(onPressed:() {
               setState(() {
                if(item>0){
                       item--;
                }
                 else{
                  item=0;
                 }
               });
             }, icon:Icon( Icons.remove_circle_outline),
                color: Colors.white70,),
             
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
             IconButton(onPressed:() {
               setState(() {
                 item++;
               });
             }, icon:Icon( Icons.add_circle_outline),
                color: Colors.white70,),
            
              IconButton(onPressed:() {
                setState(() {
                  if(favorite==false){
                favorite =true;
                  }else{
                    favorite=false;
                  }
                  
                });
              
              }, icon: Icon(
                Icons.favorite,
                color:favorite?Colors.red:Colors.white,
              )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children:
           [
              
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Row(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                
                  Expanded(child: Container()),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.ios_share_outlined),
                    color: Colors.white70,
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                ("Sofas"),
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              ),
            Container( 
              color: Color.fromARGB(255, 26, 67, 78),
                height: MediaQuery.of(context).size.height*0.41,
                 child: ModelViewer(
          src: 'assets/images/Sofa.glb',
          alt: "A 3D model of an astronaut",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                child: Row(
                  children: [
                    Text(
                      "Elite sofa",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white70),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "This sofa looks like a 1980s century sofas "
                  "with perfect material from silk and wood",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
          ]),
        ));
  }
}
