import 'package:flutter/material.dart';
import 'package:nike_priject/home2.dart';

class MyShoe extends StatefulWidget {
  const MyShoe({super.key});

  @override
  State<MyShoe> createState() => _MyShoeState();
}

final List<String> images = [
  'assets/shoe1.png',
  'assets/shoe2.png',
  'assets/shoe3.png',
  'assets/shoe4.png',
  'assets/shoe5.png',
  'assets/shoe6.png',
  'assets/shoe7.png',
  'assets/shoe1.png'
];

class _MyShoeState extends State<MyShoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe Collection'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map((imagePath) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyHome2(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.1,
                  height: MediaQuery.of(context).size.height*0.1, // Adjust width as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black54, // Background color for text
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'Show Now',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyShoe(),
  ));
}
