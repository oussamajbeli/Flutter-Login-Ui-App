import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                   
                      child: FadeAnimation( 3.5 , Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                    image: AssetImage("assets/images/im2.jpg"),
                    fit: BoxFit.fill,
                  )
                  )
                  )
                  )),
                  Positioned(
                      width: width+20,
                      height: 190,
                      child: FadeAnimation(2.1 ,  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                    image: AssetImage("assets/images/im1.jpg"),
                    fit: BoxFit.fill,
                  )
                  )
                  )
                  )
                  ),

                ],
              )
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding : EdgeInsets.symmetric(horizontal: 40),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   FadeAnimation(1.9, Text("Login",
                    style: TextStyle(
                      color:Color.fromRGBO(100,50, 97, 1),
                      fontWeight: FontWeight.bold,fontSize:33)
                      )
                      ),
                    SizedBox(
                      height:40,
                    ),
                   FadeAnimation(1.7, Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(196,135, 198, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.grey[200]))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey,),
                              ),
                            ),
                          ),
                          
                             Container(
                            padding: EdgeInsets.all(6),
                           
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey,),
                              ),
                            ),
                          ),
                         
                        ],
                      )
                    )),
                     SizedBox(height:6),
                          FadeAnimation(1.6,  Center(
                            child: Text("Forgot Password ?",
                            style:TextStyle(color:Color.fromRGBO(196, 135, 198, 1))),
                          )),
                      SizedBox(height:25,),
                      FadeAnimation( 2.6,  Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal:60),
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(49, 39, 79, 1),
                        ),
                        
                        child:
                           Center( 
                             child: Text("Login",style: TextStyle(color:Colors.white)
                            ),
                          )
                          ,
                      )
                      ),
                      SizedBox(height: 22,),
                      FadeAnimation( 2.3, Center(
                        child:Text("Create Account !",
                        style:TextStyle(color: Color.fromRGBO(49, 39, 79, .6),fontSize:17) ,)
                       ))
                  ],
                ),
              ),
        ]
        )
        );
  }
}
