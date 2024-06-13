import 'package:flutter/material.dart';
import 'package:nike_priject/home3.dart';
import 'package:nike_priject/shoe.dart';

class MyHome2 extends StatefulWidget {
  const MyHome2({super.key});

  @override
  State<MyHome2> createState() => _MyHomeState();
}

final List<String> images = [
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png',
  'assets/shoe2.png'
];

int _selectedIndex = 0;

final List<String> buttonData = [
  'All',
  'Nike',
  'Adidas',
  'Puma',
  'Crocs',
];

class _MyHomeState extends State<MyHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 16),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32.0),
                      child: Image.asset(
                        'assets/home01.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 13,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Collection',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Nike Air Max',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 13,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MyShoe(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          side: const BorderSide(color: Colors.white, width: 1),
                        ),
                        child: const Text(
                          'Show Now',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: buttonData.asMap().entries.map((entry) {
                  int index = entry.key;
                  String text = entry.value;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyShoe(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: _selectedIndex == index
                              ? const DecorationImage(
                                  image: AssetImage(
                                      'assets/gradientImage.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                )
                              : null,
                          color: _selectedIndex == index ? null : Colors.white,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 16,
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            const Row(
              children: [
                Text(
                  'New Collection',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: images.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyHome3(),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 15,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(color: const Color.fromARGB(255, 251, 250, 250), width: 1),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.favorite_border, // Use your desired heart icon
                                color: Color.fromARGB(255, 240, 38, 3), // Change the color as needed
                              ),
                            ),
                             const SizedBox(height: 0.5),
                            const Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     SizedBox(height: 0.5),
                                    Row(
                                      children: [Text(
                                        'Black Air Max', // Example shoe title, replace with actual title
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 2, 2, 2),
                                        ),
                                      ),
                                    SizedBox(width: 1), // Added SizedBox for spacing
                                      Icon(
                                          Icons.star,
                                          color: Color.fromARGB(255, 238, 215, 5),
                                          size: 16,
                                        ),
                                        Text(
                                          '5*', // Example shoe rating, replace with actual rating
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(255, 238, 215, 5),
                                          ),
                                        ),
                                      ]
                                    ),
                                    SizedBox(height: 5), // Added SizedBox for spacing
                                    Text(
                                      '\$80.0', // Example shoe price, replace with actual price
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 11, 11, 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: images.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyHome3(),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 15,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(color: const Color.fromARGB(255, 251, 250, 250), width: 1),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.favorite_border, // Use your desired heart icon
                                color: Color.fromARGB(255, 240, 38, 3), // Change the color as needed
                              ),
                            ),
                             const SizedBox(height: 0.5),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                // color: Color.fromARGB(137, 33, 163, 21), // Background color for text
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       SizedBox(height: 0.5),
                                      Row(
                                        children: [Text(
                                          'White Air Max', // Example shoe title, replace with actual title
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 2, 2, 2),
                                          ),
                                        ),
                                      SizedBox(width: 1), // Added SizedBox for spacing
                                        Icon(
                                            Icons.star,
                                            color: Color.fromARGB(255, 238, 215, 5),
                                            size: 16,
                                          ),
                                          Text(
                                            '5*', // Example shoe rating, replace with actual rating
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(255, 238, 215, 5),
                                            ),
                                          ),
                                        ]
                                      ),
                                      SizedBox(height: 5), // Added SizedBox for spacing
                                      Text(
                                        '\$80.0', // Example shoe price, replace with actual price
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 11, 11, 11),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
