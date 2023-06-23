import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {

  List<String> images = [
    "doctor (1).png",
    "doctor.png",
    "login.jpg",
    "telemedicine.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(padding: 
            EdgeInsets.symmetric(horizontal: 10,),
            child: Stack(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.pink,
                      size: 25,
                    ),
                  ),
              
              InkWell(
                onTap: (){
                  //Navigator.pop(context);
                },
                child: Icon(
                  Icons.more_vert,
                  color: Colors.pink,
                  size: 25,
                ),
              ),
                ],
              ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/doctor (1).png"),

                  ),
                  SizedBox(height: 10,),
                  Text("Dr. Doctor Name", 
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF008080),
                  ),),
                  SizedBox(height: 5,),
                  Text("Therapist",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF008080),
                        shape: BoxShape.circle,
                       
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 25,
                      ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                         padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF008080),
                        shape: BoxShape.circle,
                       
                      ),
                      child: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                        size: 25,
                      ),
                      ),
                    ],
                  )
                ],
              ),
            
            )

            ],
            ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 161, 161),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),
                   Divider(
            thickness: 1,
            color: Colors.white,
          ),
                  SizedBox(height: 05,),
                  Text("Compassionate therapist dedicated to helping individuals achieve mental wellness and find inner strength for a brighter future.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,

                  ),),
                 // SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 10,),
                      Icon(Icons.star,
                      color: Colors.amber,),
                      Text("4.2",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(width: 5,),
                      Text("[29]",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                      Spacer(),
                      TextButton(onPressed: (){},
                       child: Text("See all",
                       style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ), ),
                       ),

                    ],
                  ),
                  SizedBox(height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: Column(children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("images/${images[index]}"),

                              ),
                              title: Text("Mr. Patient Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("1 day ago"),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                  Icons.star,
                                  color: Colors.amber,

                                  ),
                                  Text("4.2",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),)
                                  
                                ],
                              ),
                            ),
                           // SizedBox(height: 5,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            
                            child: Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              " Thanks doctor!, he has qualifications and understanding about the patients and does perform his work in fully familier environment. ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),),),
                          ]),
                        ),
                      );
                    },
                  ),
                  ),
                 // SizedBox(height: 10,),
                  Text("Location",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),), 
                  Divider(
            thickness: 1,
            color: Colors.white,
          ),
                  ListTile(
                    leading: Container(
                      padding:  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle
                      ),
                      child: 
                      Icon(
                         Icons.location_on,
                        color: Color(0xFF008080),
                         size: 30,

                      ),
                    ),
                    title: Text(
                      "Kathmandu, B&B Hospial",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text("54-Street,New Road, BishalBazzar-05, 216673,Kathmandu ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        
                      ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.white12,
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Consultation Price",
              style: TextStyle(
               color: Color(0xFF008080),
               fontWeight: FontWeight.bold
              ),),
              Text("Rs. 5000",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
               color: Color(0xFF008080),
              ),)
            ],
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
               color: Color(0xFF008080),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],),
      ),
    );
  }
}
