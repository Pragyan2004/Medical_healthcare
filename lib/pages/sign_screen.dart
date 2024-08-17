import 'package:flutter/material.dart';
import 'package:medical_healthcare/pages/homescreen.dart';
import 'package:medical_healthcare/widget/navbar.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white38,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(20),
                child: Image.asset('images/doctors.png'),
              ),
              SizedBox(height: 15),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"Full Name",
                    labelStyle: TextStyle(
                      color: Colors.white
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"Email Address",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"Phone Number",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"Password",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                color: Colors.blue,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>
                            NavBarRoots(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
