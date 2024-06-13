import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

final image = [
  '../assets/shoe1.jpeg',
  '../assets/shoe2.jpeg',
  '../assets/shoe3.jpeg',
  '../assets/shoe4.jpeg',
  '../assets/shoe5.jpeg',
  '../assets/shoe6.jpeg',
  '../assets/shoe7.jpeg',
  '../assets/shoe1.jpeg'
];

int _selectedIndex = 0;

final buttonData = [
  'Show Now',
  'Show Now',
  'Show Now',
  'Show Now',
];

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
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
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(250)),
                //     color: const Color.fromARGB(255, 112, 175, 207)),
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

                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: Image.asset(
                    //     'assets/homebannershoe.png',
                    //     height: MediaQuery.of(context).size.height * 0.2,
                    //   ),
                    // ),
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
                              builder: (context) => const MyHome(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // color: Colors.white,
                          // Additional styling to make the text more readable
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
            // Row(
            //   children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child:
            // ),
            //   ],
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: buttonData.map((text) {
                  return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('../assets/gradientImage.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyHome(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  backgroundColor: Colors.transparent, // Make the button itself transparent
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
                }).toList(),
              ),
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
            Flexible(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 182, 171)),
                margin: const EdgeInsets.all(20),
                height: 400,
                width: 700,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    // final texts = ['Sneha','Sindhu'];
                    return Card(
                        margin: const EdgeInsets.all(23),
                        child: Column(
                          children: [
                            // Text(texts[index]),
                            Image.asset(image[index]),
                          ],
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
