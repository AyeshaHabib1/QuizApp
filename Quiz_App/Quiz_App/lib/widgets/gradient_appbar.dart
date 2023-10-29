import 'package:flutter/material.dart';

import '../models/multiple_choice_quiz_page.dart';
import '../models/true_false_quiz_page.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  GradientAppBar({required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.yellowAccent, Colors.green], // Replace with your desired gradient colors
            ),
          ),
        ),
        // Add any other AppBar customization here
      ),
      drawer: Drawer(
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.green, Colors.yellowAccent],
    ),
    ),
        child: ListView(
          children: <Widget>[

            ListTile(
              title: Text('True/False Questions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TrueFalseQuizPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Multiple Choice Questions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MultipleChoiceQuizPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
