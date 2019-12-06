import 'package:flutter/material.dart';

//void main() {
//  runApp(
//    MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Hush'),
//          backgroundColor: Colors.lightGreen[900],
//        ),
//        backgroundColor: Colors.white70,
//        body: Center(
//          child: Image(
//            image: AssetImage('images/cat.jpeg'),
//          ),
//        ),
//      ),
//    ),
//  );
//}
void main() {
  runApp(
    ProfileScreen(),
  );
}

//Section 4
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
          // verticalDirection: VerticalDirection.up,
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //  mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              color: Colors.blue,
              child: Text('Container 1'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: Text('Container 2'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              color: Colors.greenAccent,
              child: Text('Container 3'),
            ),
            Container(
              width: double.infinity,
              height: 10.0,
            ),
          ],
        )),
      ),
    );
  }
}

//Section 5
class FlutterLayoutsChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                height: double.infinity,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                width: 100,
                height: double.infinity,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Section 6
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://images.theconversation.com/files/301743/original/file-20191114-26207-lray93.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'),
                radius: 50,
              ),
              Text(
                'Shekar',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato-Regular',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro-Regular',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+49 17636383140',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro-Regular',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 20,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+49 17636383140',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro-Regular',
                      fontSize: 20.0,
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

//Section 7
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
