import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Contacts extends StatefulWidget{
  @override
  _Contacts createState()=>_Contacts();

}
class _Contacts extends State<Contacts>{

  @override
    Widget build(BuildContext context) {
    return Scaffold(
    body:  ListView(
      children: <Widget>[  Column(
    children: [
      Contact_info( name: "Darth Vader",
      mail: "VaderPalps@empire.com",
      phone: "069420619",
      photo:"https://i.pinimg.com/564x/34/69/5f/34695fafb7ebb88e880f798a81af0d40.jpg",
    ),  Contact_info(
      name: "Kylo Ren",
      mail: "MasterofRen@Order.com",
      phone: "01012548645",
      photo: "https://i.pinimg.com/564x/35/e2/8a/35e28af916bdd93764715258e5cc315c.jpg",

    ), Contact_info(
      name: "Baby Yoda",
      mail: "SmolYoda@Force.com",
      phone: "Mando:012031546",
      photo: "https://i.pinimg.com/564x/10/30/d6/1030d6d599accdb8ca475a7a9e53f223.jpg",

    ),
      Contact_info(
        name: "Dina",
        mail: "Dina@jacson.com",
        phone: "012554549",
        photo: "https://i.pinimg.com/564x/84/57/2e/84572ea28f99efd7bcf5cb5c5d74583d.jpg",

      ),
      Contact_info(
        name: "Joel",
        mail: "Joel@jacson.com",
        phone: "011559546",
        photo: "https://i.pinimg.com/236x/8f/29/be/8f29bec76ded252940dbe1cd373377a7.jpg",

      ),
      ],

    ),


  ]),

    /*appBar: new AppBar(backgroundColor: Colors.red,
      title: Text("Contacts",style: TextStyle(fontSize: 30.0),),),*/
    );
  }
}




class Contact_info extends StatelessWidget {
  String name,mail,phone;
  String photo;
  Contact_info({this.name,this.mail,this.phone,this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
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