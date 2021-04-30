import 'package:flutter_app/Contatcs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Emails.dart';
import 'Contatcs.dart';
import 'Profile.dart';

class Home extends StatefulWidget {
  @override
  _state createState() => _state();
}

class _state extends State<Home> {
  int navbarindex = 0;
  final List<Widget> _pages = [
    Home(),
    Contacts(),
    Profile(),
  ];
  final List<String> _names = [
    "Home",
    "Contacts",
    "Profile",
  ];
/*_onTap(){
  Navigator.of(context).push(MaterialPageRoute(builder: BuildContext)=>_pages[navbarindex]);
}*/

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Center(
        child: ListView.builder(
          itemCount: Emails.Mails.length,
          itemBuilder: (context, i) => EmailsCont(index: i),
        ),
      ),
      Contacts(),
      Profile(),
    ];

    return SafeArea(
        child: Scaffold(
      body: _pages[navbarindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        iconSize: 30.0,
        onTap: (index) {
          setState(() {
            navbarindex = index;
          });
          //_onTap();
        },
        selectedItemColor: Colors.white,
        currentIndex: navbarindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.mail), label: 'Emails'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Profile')
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('You can put whatever widget you want here'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text('${_names[index]}'),
                      onTap: () {
                        setState(() {
                          navbarindex = index;
                        });
                        Navigator.pop(context);
                      });
                },
              ),
            )
          ],
        ),
        // Center(
        /* child: MaterialApp(
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                themeMode: ThemeMode.system,
              ),*/
        // child: Text(
        //   "still under construction\nUPDATE\nSo I didnt know how to add functional buttions so im leaving it as a blank screen lol",
        //   style: TextStyle(fontSize: 20.0),
        // ),
        //
        // ),
      ),
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Emails",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    ));
  }
}

class EmailsCont extends StatelessWidget {
  final int index;
  EmailsCont({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        Emails.Mails[index],
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
