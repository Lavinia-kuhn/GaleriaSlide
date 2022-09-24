import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria em Slides',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Galeria em Slide'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> chocolate = ["AAA"];
  final urlImages = [
    'https://s.cornershopapp.com/product-images/1300698.png?versionId=NCPJIfK70IJz98AQJ4rPqaZMCthwW6Cc',
    'https://s.cornershopapp.com/product-images/1300701.png?versionId=eJRxbKmJSK5IUicWCoiBFT8BDOumhBVh',
    'https://s.cornershopapp.com/product-images/1300699.png?versionId=BEhIhwFraPg.xya3avLdoXGv4pNMHrZn',
    'https://s.cornershopapp.com/product-images/1300697.png?versionId=8jbzz5WA6DEpK8qfFgzJBtschmRiFKz8',
    'https://s.cornershopapp.com/product-images/1300700.png?versionId=VzRlqkYmIMNbcSl5_YuJAMnOiWaFYf1Z'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(height: 400),
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
        ),
      ));

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.white,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
