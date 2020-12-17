import 'package:flutter/material.dart';

void main() => runApp(BottomNavigation());

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  @override
  __HomeState createState() => __HomeState();
}

class __HomeState extends State<_Home> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: Container(),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        items : [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.pink
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Camera'),
              backgroundColor: Colors.deepOrange
          ),
        ],
        onTap: (index){
          _currentIndex=index;
        },
      ),
    );
  }
}
