// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                    image:AssetImage(
                      "assets/images/marlon-corona-1tMc27CFUbA-unsplash.jpg",),
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.modulate,), 
 fit: BoxFit.cover
          )),
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(height: 35,), 
                          Text("Sign up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 57, 57, 57),
                                  fontFamily: "myfont")),
                           SizedBox(height: 200,),   
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          const BoxShadow(
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.blue[800],
                            ),
                            hintText: "Your Email:",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          const BoxShadow(
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.blue[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 125,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255 ,50, 95, 116)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "signup",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Already have an account? ", style: TextStyle(color: Colors.white,)),
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, '/login');},
                          child: Text(" Sign in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)))
                      ],
                    ),
                    SizedBox(height: 17,),
                    SizedBox(
                      width: 299,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(child: Divider(thickness: 0.6,color: Colors.white,)),
                          Text("OR",style:TextStyle(color: Colors.white),),
                          Expanded(child: Divider(thickness: 0.6,color: Colors.white,)),
                        ],
                      ),
                    ),

                    Container(
              margin: EdgeInsets.symmetric(vertical: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                     
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black , width: 1 )
                      ),
                      child: Image.asset(
                        "assets/images/apple_pic.png",
                        
                        height: 27,
                      ),
                    ),
                  ),
                  SizedBox(width: 22,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors. black , width: 1 )
                      ),
                      child: Image.asset(
                        "assets/images/google_pic.png",
                        
                        height: 27,
                      ),
                    ),
                  ),
                  SizedBox(width: 22,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black , width: 1 )
                      ),
                      child: Image.asset(
                        "assets/images/facebook_pic.png",
                        
                        height: 27,
                      ),
                    ),
                  ),
                
                
                ],
              ),
            ),                  
                  ],
                ),
              )
            ],
          ),
        ),
     
      ),
    );
  }
}