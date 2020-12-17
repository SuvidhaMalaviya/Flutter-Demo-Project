import 'package:flutter/material.dart';

void main() => runApp(SideBar());

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SideBar'),
        backgroundColor: Colors.deepOrange,
      ),
      body: _MainScreen(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.deepOrange,
                    Colors.orangeAccent
                  ]
                )
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                      child: Image.asset('assets/flutter-logo.png',width: 80,height: 80,),)
                    ),
                    Padding(padding: EdgeInsets.all(5.0),
                    child: Text('Flutter',style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),),)
                  ],
                ),
              )
            ),
            CustomTitle(Icons.person,'Profile',()=>{}),
            CustomTitle(Icons.notifications,'Notifiction',()=>{}),
            CustomTitle(Icons.settings,'Settings',()=>{}),
            CustomTitle(Icons.lock,"Logout",()=>{}),
          ],
        ),
      ),
    );
  }
}

class CustomTitle extends StatelessWidget{

  IconData icon;
  String title;
  Function onTap;

  CustomTitle(this.icon,this.title,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Colors.grey.shade400
          ))
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 35.0,
            child: Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(title,style: TextStyle(
                    fontSize: 17.0
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Welcome'),
    );
  }
}
