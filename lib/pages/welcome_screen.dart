import 'package:flutter/material.dart';
import 'package:medical_healthcare/pages/login_screen.dart';
import 'package:medical_healthcare/widget/navbar.dart';
import 'package:medical_healthcare/pages/sign_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>NavBarRoots(),
                 ));
                },
                child: Text('Skip',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),),
              ),
            ),
            SizedBox(height:50),
            Padding(
                padding: EdgeInsets.all(20),
              child: Image.asset('images/doctors.png'),
            ),
            SizedBox(height: 10),
            Text("Doctor Appointment",
              style:TextStyle(
                color: Colors.blue,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ) ,),
            SizedBox(height: 10),
            Text("Appoint Me Doctor",
              style:TextStyle(
                color: Colors.black45,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.blue,
                  child: InkWell(
                    onTap: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context)=>LoginScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.blue,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>
                      SignUpScreen(),
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      ),
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
