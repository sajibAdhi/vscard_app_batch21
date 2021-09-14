import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const NewCard(
              text: "Sajib Adhikary",
              icon: Icons.person,
            ),
            const NewCard(
              text: "+880 1400593322",
              icon: Icons.phone,
            ),
            const NewCard(
              text: "tosajibadhi@gmail.com",
              icon: Icons.email,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const NewCard({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Card(
        
        margin: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            text,
            style: const TextStyle(
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
