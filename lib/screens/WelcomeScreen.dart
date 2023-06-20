import 'package:doctor/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                // Navigator.push(context,MaterialPageRoute(
                  
                //   builder: (context) => ));
              },
              child: Text('SKIP',
                style: TextStyle(
                  color: Color(0xFF008080),
                  fontSize: 20,

                ),
                ),
              ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 30, right: 30), child: Image.asset("images/stethoscope.gif"),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Doctors Appointment',
                style: TextStyle(
                  color: Color(0xFF008080),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                )
                ),
              ),
              SizedBox(height: 5,),

              Text('Appoint Your Doctor',
              style: TextStyle(
                color: Color(0xFFE4572E),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  
              )
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                      color: Color(0xFF008080),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                          ));
                      },

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:15, horizontal:35 ),
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
                   Material(
                      color: Color(0xFF008080),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: (){
                          //nevigator.push(context, MaterialPageRoute(
                          //builder: (context) =>
                          //));
                      },

                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical:15, horizontal:35 ),
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
                ],
              )
           ],
        ),

      ),
    );
  }
}