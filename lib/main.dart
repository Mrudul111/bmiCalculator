import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {

  runApp(BMI_CALCULATOR());
}
class BMI_CALCULATOR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEDEDED),
        appBarTheme: AppBarTheme(color: Color(0xFFEDEDED)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Color(0xFFEDEDED))
      ),
      home: InputPage(),
    );
  }
}

