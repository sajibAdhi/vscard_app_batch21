import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            radius: 50,
          ),
          const Card(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Text(
              "Sajib Adhikary",
              style: TextStyle(
                fontFamily: "DanceScript",
                fontSize: 26,
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Text(
              "Flutter Developer",
              style: TextStyle(
                fontFamily: "DanceScript",
                fontSize: 26,
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: const ButtonStyle(),
            ),
            padding: const EdgeInsets.only(top: 50),
          ),
        ],
      ),
    );
  }
}
