import 'package:dome/login.dart';
import 'package:dome/signup.dart';
import 'package:flutter/material.dart';


class showPage extends StatefulWidget {
  @override
  _showPageState createState() => _showPageState();
}

class _showPageState extends State<showPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return SafeArea(
              child:  Container(
                height: height,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/p1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child:Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 70,right: 30),
                      alignment: Alignment.topCenter,
                      child:  Text("Dome",style: TextStyle(color: Colors.black,fontSize: 70,fontFamily: 'Pattaya'),),
                    ),


                    Container(
                      alignment: Alignment.bottomCenter,

                      padding: EdgeInsets.only(bottom: 70,right: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signup(),));

                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.deepPurple,fontSize: 40,fontFamily: 'Lobster'),),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login(),));

                        },
                        child: Text("Already have an Account ? Sign in",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'Lobster'),),
                      ),
                    ),






                  ],
                ),





              ),



          );
        },
      ),
    );
  }
}
