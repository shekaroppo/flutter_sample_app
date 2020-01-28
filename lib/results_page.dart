import 'package:flutter/material.dart';
import 'package:flutter_sample_app/constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1E1C34),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(
                        color: Color(0xFF7EDC9F),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '26.7',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercse more.',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: AlignmentDirectional.center,
              color: Color(0xFFFE0067),
              padding: EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Text(
                'RE-CALCULATE',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
