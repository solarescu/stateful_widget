import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  String firstImageLink = 'https://picsum.photos/250?image=9';
  String secondImageLink = 'https://picsum.photos/250?image=1';

  late String imageLink = firstImageLink;

  void changeImage() {
    setState(() {
      if (imageLink == firstImageLink) {
        imageLink = secondImageLink;
      } else {
        imageLink = firstImageLink;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(imageLink),
            ElevatedButton(
              onPressed: changeImage,
              child: const Text('Change image')
            ),
          ],
        )
      ),
    );
  }
}