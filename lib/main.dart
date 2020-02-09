import 'package:flutter/material.dart';
import 'package:flutter_sample_app/clima/screens/loading_screen.dart';

import 'screens/input_page.dart';

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
    Clima(),
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
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              color: Colors.blue,
              child: const Text('Container 1'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin:const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              color: Colors.white,
              child: const Text('Container 2'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              color: Colors.greenAccent,
              child: const Text('Container 3'),
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
                backgroundImage: const NetworkImage(
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
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
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
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
//              Expanded(
//                child: FlatButton(
//                  child: Image.asset('images/dice$leftDiceNumber.png'),
//                  onPressed: () {
//                    print("Image 1 clicked");
//                  },
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  child: Image.asset('images/dice$rightDiceNumber.png'),
//                  onPressed: () {
//                    print("Image 2 clicked");
//                  },
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }
}

//Section 10
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

//Section 12: BMI Calculator - Building Flutter UI for Intermediates
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0F0D20),
        scaffoldBackgroundColor: const Color(0xFF0F0D20),
      ),
      home: InputPage(),
    );
  }
}

class NavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Screen0(),
        '/first': (BuildContext context) => Screen1(),
        '/second': (BuildContext context) => Screen2(),
      },
    );
  }
}

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen0'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: const Text('Go to Screen1'),
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
          ),
          RaisedButton(
            child: const Text('Go to Screen2'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen1'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to Screen2'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<Screen2>(builder: (BuildContext context) {
                  return Screen2();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to Screen1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

//Section 13: Clima - Powering Your Flutter App with Live Web Data

class Clima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
