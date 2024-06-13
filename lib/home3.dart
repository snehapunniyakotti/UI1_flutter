import 'package:flutter/material.dart';
import 'package:nike_priject/shoe.dart';

class MyHome3 extends StatefulWidget {
  const MyHome3({super.key});

  @override
  State<MyHome3> createState() => _MyHome3State();
}

int _selectedIndex = 0;

final List<String> sizeData = [
  '25',
  '26',
  '27',
  '28',
  '27',
];

class _MyHome3State extends State<MyHome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.notifications_none_outlined),
          SizedBox(width: 16),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                  '../assets/shoe2.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
            // color: Colors.indigo,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Expanded(
         child:Container(
          decoration: const BoxDecoration(color:Color.fromARGB(255, 224, 224, 224),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)) ),
           child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nike Air Max White-version',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Row(children: [
                  Text(
                    '5*', // Example shoe rating, replace with actual rating
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 238, 215, 5),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    '(17 Reviews)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ]),
                const Text(
                  'A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt to varied terrains and climate conditions, it is vulnerable, and shoes provide protection.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                const Text(
                  'Selected Color',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:const EdgeInsets.only(right: 4),
                      width: MediaQuery.of(context).size.width *
                          0.080, // Adjust the size as needed
                      height: MediaQuery.of(context).size.height *
                          0.080, // Adjust the size as needed
                      decoration: const BoxDecoration(
                        color: Colors.blue, // Set your desired color
                        shape: BoxShape.circle,// This makes the container circular
                        
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(right: 4),
                      width: MediaQuery.of(context).size.width *
                          0.080, // Adjust the size as needed
                      height: MediaQuery.of(context).size.height *
                          0.080, // Adjust the size as needed
                      decoration: const BoxDecoration(
                        color:
                            Color.fromARGB(255, 250, 248, 248), // Set your desired color
                        shape: BoxShape.circle, // This makes the container circular
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(right: 4),
                      width: MediaQuery.of(context).size.width *
                          0.080, // Adjust the size as needed
                      height: MediaQuery.of(context).size.height *
                          0.080, // Adjust the size as needed
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(
                            255, 227, 4, 4), // Set your desired color
                        shape: BoxShape.circle, // This makes the container circular
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sizeData.asMap().entries.map((entry) {
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
                // const SizedBox(
                //   height: 3,
                // ),
                const Text(
                  'Price :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // const SizedBox(
                //   height: 3,
                // ),
                const Text(
                  "\$125.50",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            '../assets/gradientImage.jpg'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(
                          20), // Optional: Add border radius if needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MyShoe()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.transparent, // Set background color to transparent
                        fixedSize: const Size(180, 50),
                      ),
                      child: const Text(
                        'Add to Bag',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )),
         ),
        )
      ]),
    );
  }
}
