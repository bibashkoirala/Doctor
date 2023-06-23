import 'package:doctor/screens/appointmentScreen.dart';
import 'package:doctor/screens/login_screen.dart';
import 'package:doctor/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  

List symptoms = [
      "Temperature",
      "Snuffle",
      "Fever",
      "Pain",
      "Cold",

  ];
  List images = [
    //insert photo of doctors here
      "doctor (1).png",
      "doctor.png",
      "login.jpg",
      "telemedicine.png",

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Hello Bibash', 
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF008080),
                        ) ,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/doctor.png"),
                      ),
                  ],)
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 112, 12),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
 
                                ),
                                child: Icon(
                                  Icons.add,
                                   color: Color(0xFF008080),
                                   size: 25,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Clinic Visited",
                                style: TextStyle(
                                  fontSize: 18, color: Colors.white, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                             SizedBox(height: 5,),
                              Text("Make an appointment",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              ),

                            ],
                          ),

                        ),
                      ),
                      InkWell(
                         onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => LoginScreen(),
                      ));
                         },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Color(0xFF008080),
                                  shape: BoxShape.circle,
 
                                ),
                                child: Icon(
                                  Icons.home_filled,
                                   color: Colors.white,
                                   size: 25,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Home Visit",
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black87, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Call a doctor home.",
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                              ),

                            ],
                          ),

                        ),
                      ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.only(left:15),
                child: Text("What are your symptoms?",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
                ),
                ),

                SizedBox( height: 60,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),

                        ]
                      ),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },

                ),
                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.only(left: 15),
                child: Text("Popular Doctors",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),),
                ),
                
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index){
                    return InkWell(
                     onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => AppointmentScreen(),
                      ));
                     },
                     child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),

                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                               radius: 35,
                               backgroundImage: 
                               (index >= 0 && index < images.length)
                               ? AssetImage("images/${images[index]}")
                               : AssetImage("images/doctor.png"),
                              ),

                          Text("Dr. Doctor Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),),
                 
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Therapist",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text("4.2",style: 
                    TextStyle(
                      color: Colors.black54,
                    ),),

                  ],
                )
                        ],
                      ),
                     ),
                    );
                   })
                
             ],
          
                   
              ),
          ),
        );
  

  }
}