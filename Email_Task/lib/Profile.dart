import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget{
  @override
  _Profile createState()=>_Profile();


}
class _Profile extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Container(
          height: 500.0,
            width: double.infinity,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.blue,
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://i.pinimg.com/564x/cb/ae/bf/cbaebff452254b55daff33f051fe2184.jpg"),
              ),
              title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [Row(
                  children: [
                    Text("Welcome Home  ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                    ),
                    Icon(CupertinoIcons.home,color: Colors.green,)
                  ],
                ),
                  Text("User Name:-\nEllie from the last of us",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),

            ),
            Row(
              children: [
               Padding(padding: EdgeInsets.only(left:25.0)),
                Icon(CupertinoIcons.phone, color: Colors.green,),
                Text("\n  Phone Number\n  07775000",
                style: TextStyle(
                  fontSize: 25.0
                ),)
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left:25.0)),
                Icon(CupertinoIcons.mail, color: Colors.green,),
                Text("\n  Email\n  Ellie@jackson.com",
                  style: TextStyle(
                      fontSize: 25.0
                  ),)
              ],
            ),
           
          ],
        ),
          
        ),

      ),

    );
  }
}