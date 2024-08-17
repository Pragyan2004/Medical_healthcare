import 'package:flutter/material.dart';
class AppointmentScreen extends StatelessWidget {
  List imgs=[
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];
  List name=[
    "Dr Mario",
    "Dr.Mia",
    "Dr.Ajay",
    "Dr.Ojas"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child:Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.more_vert,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/doctor1.jpg"),
                      ),
                      SizedBox(height: 10,),
                      Text("Dr.Doctor name",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 10),
                      Text("Therapist",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.call,
                            color: Colors.white,
                            size: 25,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.message,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(height: 5),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 10),
                      Icon(Icons.star,
                      color: Colors.yellow,),
                      SizedBox(width: 10),
                      Text("4.9",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 20),
                      Text("(124)",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),),
                      Spacer(),
                      TextButton(
                          onPressed: (){},
                          child: Text("See All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder:(context,index){
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]
                          ),
                         child: SizedBox(
                           width: MediaQuery.of(context).size.width/1.5,
                           child: Column(
                             children: [
                               ListTile(
                                 leading: CircleAvatar(
                                   radius: 25,
                                   backgroundImage: AssetImage("images/${imgs[index]}",
                                   ),
                                 ),
                                 title: Text(name[index],
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                 ),),
                                 subtitle: Text("1. day age"),
                                 trailing: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Icon(Icons.star,
                                       color: Colors.yellow,
                                     ),
                                     Text("4.9",
                                     style: TextStyle(
                                       color: Colors.black54,
                                     ),),
                                   ]
                                 ),
                               ),
                               SizedBox(height: 5),
                               Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                               child: Text(
                                 maxLines:2,
                                 overflow:TextOverflow.ellipsis,
                                 "Many thanks to ${name[index]} he is a great and professional doctor",
                               style: TextStyle(
                                 color: Colors.black
                               ),),
                               )
                             ],
                           ),
                          )
                        );
                      },
                  ),
                  ),
                  SizedBox(height: 10),
                  Text("Location",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.location_on,
                      color: Colors.blue,
                      ),
                    ),
                    title: Text("New York,Medical Centre",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    subtitle: Text("Address line of the medical centre",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consulation Price",
                style: TextStyle(
                  color: Colors.black45
                ),),
                Text("\$100",
                  style: TextStyle(
                  fontSize: 20,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                ),)
              ],
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Book an Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
