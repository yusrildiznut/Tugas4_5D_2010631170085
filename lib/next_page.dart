import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // pop itu untuk kembali kehalaman sebelumnya
            },
            child: Text("back"),
          )
        ],
      )),
    );
  }
}
