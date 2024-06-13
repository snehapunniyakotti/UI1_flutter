

// import 'package:flutter/material.dart';

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         leading: Row(
//           children: [
//             SizedBox(
//               width: 20,
//             ),
//             Icon(Icons.menu),
//           ],
//         ),
//         actions: [
//           Icon(Icons.search),
//           SizedBox(
//             width: 30,
//           )
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         // color: const Color.fromARGB(255, 220, 57, 98),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.2,
//                     width: MediaQuery.of(context).size.width * 1,
//                     margin: EdgeInsets.all(40),
//                     child: Stack(
//                       fit: StackFit.expand,
//                       children: [
//                         Image.asset(
//                           '../assets/gradientImage.jpg',
//                           fit: BoxFit.cover,
//                         ),
//                         Align(
//                             // alignment: Alignment.bottomRight,
//                             child: Image.asset(
//                           '../assets/homebannershoe.png',
//                           height: MediaQuery.of(context).size.height * 20,
//                           width: MediaQuery.of(context).size.width * 10,
//                           alignment: Alignment.bottomRight,
//                         )),
//                         Container(
//                           alignment: Alignment.topLeft,
//                           margin: EdgeInsets.only(top: 10, left: 4),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'New Collection',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               // SizedBox(height: 8,),
//                               Text(
//                                 'Nike Air Max',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 100,),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                             padding: EdgeInsets.only(top: 10),
//                             child: ElevatedButton(
//                               child: Text(
//                                 'Show Now',
//                                 style: TextStyle(
//                                     fontSize: 20, color: Colors.white),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).push(
//                                   MaterialPageRoute(
//                                     builder: (context) => MyHome(),
//                                   ),
//                                 );
//                               },
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.white38,
//                                   // fixedSize: Size(100, 1),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: [Text('row2')],
//             ),
//             Row(
//               children: [Text('row3')],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class MyHome extends StatefulWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         leading: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Icon(Icons.menu),
//         ),
//         actions: [
//           Icon(Icons.search),
//           SizedBox(width: 30),
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height*0.3,
//         child: Column(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: LayoutBuilder(
//                   builder: (context, BoxConstraints constraints) {
//                     return Container(
//                        height: MediaQuery.of(context).size.height,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20.0),
//                         color: Colors.grey[300],
//                       ),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           Image.asset(
//                             'assets/home01.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           Positioned(
//                             top: constraints.maxHeight * 0.1,
//                             left: constraints.maxWidth * 0.05,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'New Collection',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text(
//                                   'Nike Air Max',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Positioned(
//                             bottom: constraints.maxHeight * 0.1,
//                             left: constraints.maxWidth * 0.05,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context).push(
//                                   MaterialPageRoute(
//                                     builder: (context) => MyHome(),
//                                   ),
//                                 );
//                               },
//                               child: Text('Shop Now'),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.transparent,
//                                 // primary: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('Row 2'),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('Row 3'),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';

// class MyHome extends StatefulWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         leading: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Icon(Icons.menu),
//         ),
//         actions: [
//           Icon(Icons.search),
//           SizedBox(width: 16),
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 width: double.infinity,
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(32.0),
//                       child: Image.asset(
//                         'assets/home01.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       top: 10,
//                       left: 8,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'New Collection',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: MediaQuery.of(context).size.width *
//                                   0.04, // Responsive font size
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'Nike Air Max',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: MediaQuery.of(context).size.width *
//                                   0.065, // Responsive font size
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 40,
//                       left: 13,
//                       child: TextButton(
//                         child: Text(
//                           'Show Now',
//                           style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width *
//                                 0.035, // Responsive font size
//                             color: Colors.white,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(
//                               builder: (context) => MyHome(),
//                             ),
//                           );
//                         },
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.transparent,
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 10.0),
//                           side: BorderSide(color: Colors.white, width: 1),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Flexible(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('Row 2'),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('Row 3'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({super.key});

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome1> {

int SelectedIndex =0;

     List<Widget> pages =<Widget>[
      Center(
        child: Container(
          decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 182, 171)),
          margin: const EdgeInsets.all(20),
           height:400,
           width: 700,
          child: GridView.builder(
          itemCount: 2,  
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemBuilder: (context, index) { 
            final texts = ['Sneha','Sindhu'];
            final image =['../assets/car1.jpeg','../assets/car2.jpeg'];
             return Card(
            margin: const EdgeInsets.all(23),
            child: Column(
              children: [
              Text(texts[index]),
              Image.asset(image[index]),
              ],
            ) 
           );
           },
           ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 228, 171)),
        margin: const EdgeInsets.all(20),
        child: const ListTile(),
      ),
      Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 217, 245, 171)),
        margin: const EdgeInsets.all(20),
        child: Image.asset('../assets/car1.jpeg'),
      ),
    ];

    void onItemTapped(int newValue){
      setState(() {
     SelectedIndex = newValue;
      });
    }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.abc_outlined),
                  Icon(Icons.abc_outlined),
                ],
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.center,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flattrade'),
                  Text('Fortune'),
                ],
              ),
            )),
          ],
        ),
      ),
      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        onTap:onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 177, 140, 226),
      ),
      body: pages[SelectedIndex],
    );
  }
}



// backgroundground color gradient color for button 

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home'),
      ),
      body: Center(
        child: Text('Welcome to My Home!'),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonData = [
      'Show Now',
      'Show Now',
      'Show Now',
      'Show Now',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttonData.map((text) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyHome(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  backgroundColor: Colors.transparent, // Make the button itself transparent
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}


// background image for button

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home'),
      ),
      body: Center(
        child: Text('Welcome to My Home!'),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0; // Default selected index

  @override
  Widget build(BuildContext context) {
    final buttonData = [
      'Show Now',
      'Show Now',
      'Show Now',
      'Show Now',
    ];

    return SingleChildScrollView(
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
                    builder: (context) => MyHome(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: _selectedIndex == index
                      ? DecorationImage(
                          image: AssetImage('assets/your_image.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: _selectedIndex == index ? null : Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: _selectedIndex == index ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

