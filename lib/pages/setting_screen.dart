import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Setting",
               style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:AssetImage("images/doctor1.jpg")
              ),
              title: Text("Dr maro",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text("Profile"),
            ),
            Divider(height: 50),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person_outline,
                color: Colors.black45,
                size: 35,
                ),
              ),
              title: Text("Profile",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.notifications_outlined,
                  color: Colors.pink,
                  size: 35,
                ),
              ),
              title: Text("Notification",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.privacy_tip_outlined,
                  color: Colors.purpleAccent,
                  size: 35,
                ),
              ),
              title: Text("Privacy",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.settings_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              title: Text("General",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.orange.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.error_outline,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              title: Text("About us",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(height: 40),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.logout_outlined,
                  color: Colors.white54,
                  size: 35,
                ),
              ),
              title: Text("Log out",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
