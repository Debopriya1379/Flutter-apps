import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  final title;

  const secondpage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('hello world '),
             Text('This is $title')
          ],
        ),
      ),
    );
  }
}