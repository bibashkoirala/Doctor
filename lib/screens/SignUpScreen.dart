import 'package:doctor/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 70, right: 70,),
                child: Image.asset("images/reception.gif"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Fullname",
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
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email",
              style: TextStyle(
                color: Color(0xFF008080),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  
              )),
                      prefixIcon: Icon(Icons.email),
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Phone Number",
              style: TextStyle(
                color: Color(0xFF008080),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  
              )),
                      prefixIcon: Icon(Icons.phone),
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
              SizedBox(height: 10,),

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
                          builder: (context) => SignUpScreen(),
                          ));
                      },

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10 ),
                        child: Center(
                          child: Text('Sign Up',
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
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Already have any account?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,

                  ),
                  ),
                  TextButton(onPressed: () {
                     Navigator.push(context, 
                          MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                          ));
                  },
                    child: Text("Log In",
                    style: 
                  TextStyle(
                      fontSize: 18,
                     color: Colors.pink,
                    ),),
                  ),
                 // SizedBox(height: 20,)
                ],
              )
        

            ],
    ),
        ),
      ),
    );

  }
}