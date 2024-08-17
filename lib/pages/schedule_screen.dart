import 'package:flutter/material.dart';
import 'package:medical_healthcare/schedule/complete.dart';
import 'package:medical_healthcare/schedule/uocoming.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex=0;

  final _scheduleWidget=[
    UpcomingSchedule(),
    CompleteSchedule(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Schedule",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex==0? Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Upcoming",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                          color: _buttonIndex==0?Colors.white:Colors.black45
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex==1? Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Complete",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                            color: _buttonIndex==1?Colors.white:Colors.black45
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex==2? Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Cancel",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex==2?Colors.white:Colors.black45
                        ),),

                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            _scheduleWidget[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
