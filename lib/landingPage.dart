import 'package:flutter/material.dart';
import 'package:nike_priject/home2.dart';
import 'package:nike_priject/home3.dart';
import 'package:nike_priject/homePage.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        // alignment: Alignment.topRight,
        children: [
          // Transform.rotate(
            // angle: 10,
            // child: 
            Image.asset('../assets/Shoe.jpg',
            fit: BoxFit.cover,
            
            // alignment: Alignment.center,
            ),
          // ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 50,left: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Comfort Your Foot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  // SizedBox(height: 8,),
                Text(
                'with our shoes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ],
            ),
          ),
         Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
          padding: const EdgeInsets.all(40),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyHome2(),),);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white38,
              fixedSize: const Size(500, 50) 
            ),
            child: const Text('Get Started',
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          ),
         ),
        ],
      ),
    );
  }
}