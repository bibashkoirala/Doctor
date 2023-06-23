import 'package:doctor/screens/SignUpScreen.dart';
import 'package:doctor/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 70, right: 70,),
                child: Image.asset("images/reception.gif"),
              ),
             // SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Username",
              style: TextStyle(
                color: Color(0xFF008080),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  
              )),
                      prefixIcon: Icon(Icons.person),
                    ),
                ),
              ),
             
               Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText:passToggle ? true : false ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Password",
              style: TextStyle(
               color: Color(0xFF008080),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  
              )),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle == true){
                            passToggle = false;
                          }
                          else{
                            passToggle= true;
                          }
                          setState(() {});
                        },
                        child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                      ),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                 child: FractionallySizedBox(
                  widthFactor: 0.35,
                  child: Material(
                      color: Color(0xFF008080),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: (){
                          Navigator.push(context, 
                          MaterialPageRoute(
                          builder: (context) => SingleChildScrollView(
                            child: HomeScreen(),
                          ),
                          ));
                      },

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:15, horizontal:25 ),
                        child: Center(
                          child: Text('Log In',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            //color: Color(0XFFFF566B),
                          ),),
                        ),
                      ),
                    ),
                   
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any account?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,

                  ),
                  ),
                  TextButton(onPressed: () {
                     Navigator.push(context, 
                          MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                          ));
                  },
                    child: Text("Sign Up",
                    style: 
                    TextStyle(
                      fontSize: 18,
                    color: Colors.pink,
                    ),),
                  ),
                ],
              ),
        


            ],
          )
        ),
      )
    );
  }
}