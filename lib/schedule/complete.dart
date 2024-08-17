import 'package:flutter/material.dart';
class CompleteSchedule extends StatelessWidget {
  const CompleteSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text("Complete",
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Dr Mona",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    subtitle: Text("Thearpist",),
                    trailing:CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/doctor1.jpg"),
                    ) ,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 5),
                          Text("02/1/2024",
                            style: TextStyle(
                                color: Colors.black54
                            ),)
                        ],
                      ),
                      Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5),
                            Text("10:45 AM",
                              style: TextStyle(
                                  color: Colors.black54
                              ),)
                          ]
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Complete",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Dr Mona",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    subtitle: Text("Thearpist",),
                    trailing:CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/doctor1.jpg"),
                    ) ,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 5),
                          Text("24/12/2023",
                            style: TextStyle(
                                color: Colors.black54
                            ),)
                        ],
                      ),
                      Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5),
                            Text("11:45 AM",
                              style: TextStyle(
                                  color: Colors.black54
                              ),)
                          ]
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Complete",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      )

    );
  }
}
