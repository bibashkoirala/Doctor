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
      "doctor.png",
      "doctor.png",
      "doctor.png",

  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        
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
                      Text('Hello Bibash', 
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF008080),
                      ) ,
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