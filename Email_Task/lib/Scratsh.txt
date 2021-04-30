import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Contact_info extends StatelessWidget {
  String name,mail,phone;
  String photo;
  Contact_info({this.name,this.mail,this.phone,this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.elliptical(30, 20))
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(this.photo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.mail,color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left:2.0),
                      child: Text(this.mail,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    )
                  ],
                ),
                Row(children: [

                  Icon(CupertinoIcons.phone, color:Colors.green,),
                  Padding(padding: EdgeInsets.only(left: 3.0),
                    child: Text(this.phone,
                        style:TextStyle(fontSize: 16.0)),
                  )
                ],)
              ],
            ),

          )
        ],
      ),
    );
  }
}