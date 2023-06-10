import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

class OutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Result(),
      color: Color(0xFFEDEDED),
    );
  }
}

class Result extends StatefulWidget {
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "$ans",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF58627D),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "$msg",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF58627D),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
               // Go back to the previous page
            },
            child: Text(
              "Return to Home page",
              style: TextStyle(
                color: Color(0xFF58627D),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: inactiveColor,
              foregroundColor: Color(0xFF58627D),
            ),
          ),
        ],
      ),
    );
  }
}
