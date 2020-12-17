import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> usernames = ["Flutter", "JS", "Android", "PHP", "Java", "Swift", "Laravel", "Kotlin", "C", "C++"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('List Builder'),
     ),
      body: _MainScreen(),
    );
  }

  Widget _MainScreen() {
    return Container(
      child: ListView.builder(
          itemBuilder: (_,int index) => ListItem(this.usernames[index]),
          itemCount: this.usernames.length,

      )
    );
  }
}

class ListItem extends StatelessWidget{

  final String username;
  ListItem(this.username);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text('A'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
            ),
            Text(username,
                style: TextStyle(
                  fontSize: 20.0
                ),)
          ],
        ),
      )
    );
  }

}