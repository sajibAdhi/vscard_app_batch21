import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            radius: 50,
          ),
          Text(
            "Sajib Adhikary",
            style: TextStyle(),
          ),
          Text("Flutter Developer"),
          SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.red,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: ListTile(
              leading: Icon(Icons.phone_android),
              title: Text(
                "+880 1400593322",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                "tosajibadhi@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
