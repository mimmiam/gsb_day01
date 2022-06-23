import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreen();
}

class _ContactScreen extends State<ContactScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child:FloatingActionButton(
          backgroundColor: Theme.of(context).secondaryHeaderColor ,
      child: Icon(Icons.arrow_back),
          onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/profile', (route) => false);
              },
    ),

        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     primary: Theme.of(context).secondaryHeaderColor,
        //   ),
        //   onPressed: () {
        //     Navigator.pushNamedAndRemoveUntil(
        //         context, '/profile', (route) => false);
        //   },
        //   child: Text('Back to profile'),
        // ),
      ),
    );
  }
}
