// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:webstore/provider.dart';

// // // // ignore: must_be_immutable
// // // class Homepage extends StatelessWidget {
// // //   Homepage({super.key});

// // //   List data = [
// // //     "Item 1",
// // //     "Item 2",
// // //     "Item 3",
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         // backgroundColor: Colors.blue,
// // //         title: const Text("View iteam"),
// // //         centerTitle: true,
// // //       ),
// // //       body: Column(children: [
// // //         const SizedBox(
// // //           height: 10,
// // //         ),
// // //         Expanded(
// // //           // height: 400,
// // //           // width: double.infinity,
// // //           child: ListView.builder(
// // //             itemCount: data.length,
// // //             itemBuilder: (context, index) {
// // //               return Padding(
// // //                 padding: const EdgeInsets.all(8.0),
// // //                 child: ListTile(
// // //                   // tileColor: Colors.red,
// // //                   shape: Border.all(color: Colors.red),
// // //                   leading: Text(data[index]),
// // //                   trailing: TextButton(
// // //                       onPressed: () {
// // //                         context.read<CartProvider>().addCart(data[index]);
// // //                       },
// // //                       style: const ButtonStyle(),
// // //                       child: const Text("Add to cart")),
// // //                 ),
// // //               );
// // //             },
// // //           ),
// // //         ),
// // //       ]),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: () {
// // //           GoRouter.of(context).push('/cart');
// // //         },
// // //         child: const Icon(Icons.shop),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:provider/provider.dart';
// // import 'package:webstore/provider.dart';

// // // ignore: must_be_immutable
// // class Homepage extends StatelessWidget {
// //   Homepage({super.key});

// //   List data = [
// //     "Item 1",
// //     "Item 2",
// //     "Item 3",
// //     "Item 4",
// //     "Item 5",
// //     "Item 6",
// //     "Item 7",
// //     "Item 8",
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         // backgroundColor: Colors.blue,
// //         title: const Text("View Iteam"),
// //         centerTitle: true,
// //       ),
// //       body: Column(
// //         children: [
// //           const SizedBox(
// //             height: 10,
// //           ),
// //           Expanded(
// //             child: GridView.builder(
// //               itemCount: data.length,
// //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 2, // Number of items per row
// //                 crossAxisSpacing: 10,
// //                 mainAxisSpacing: 10,
// //               ),
// //               itemBuilder: (context, index) {
// //                 return Container(
// //                   decoration: BoxDecoration(
// //                     image: const DecorationImage(
// //                       image: AssetImage('assets/Images/skencare2.png'),
// //                       fit: BoxFit.cover,
// //                     ),
// //                     borderRadius: BorderRadius.circular(12.0),
// //                   ),
// //                   child: GridTile(
// //                     header: Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         data[index],
// //                         style: const TextStyle(
// //                           color: Colors.black,
// //                           fontSize: 16,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                     child: Container(), // Placeholder for the main content
// //                     footer: TextButton(
// //                       onPressed: () {
// //                         context.read<CartProvider>().addCart(data[index]);
// //                       },
// //                       style: const ButtonStyle(),
// //                       child: const Text(
// //                         "Add to cart",
// //                         style: TextStyle(color: Colors.black),
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           GoRouter.of(context).push('/cart');
// //         },
// //         child: const Icon(Icons.shop),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'package:webstore/provider.dart';

// // ignore: must_be_immutable
// class Homepage extends StatelessWidget {
//   Homepage({super.key});

//   List data = [
//     {"name": "Item 1", "price": " KWD 6.00"},
//     {"name": "Item 2", "price": " KWD 15.00"},
//     {"name": "Item 3", "price": " KWD 8.00"},
//     {"name": "Item 4", "price": " KWD 20.00"},
//     {"name": "Item 5", "price": " KWD 18.00"},
//     {"name": "Item 6", "price": " KWD 6.00"},
//     {"name": "Item 7", "price": " KWD 7.00"},
//     {"name": "Item 8", "price": " KWD 5.00"},
//   ];

//   List<String> images = [
//     'assets/Images/skincare1.png',
//     'assets/Images/skencare2.png',
//     'assets/Images/skencare3.png',
//     'assets/Images/skencare4.png',
//     'assets/Images/skincare5.png',
//     'assets/Images/skincare6.png',
//     'assets/Images/skincare7.png',
//     'assets/Images/skencare8.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // backgroundColor: Colors.blue,
//         title: const Text("View Items"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: GridView.builder(
//               itemCount: data.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // Number of items per row
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(images[index]),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: GridTile(
//                     header: Center(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               data[index]["name"],
//                               style: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Text(
//                             data[index]["price"],
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     child: Container(), // Placeholder for the main content
//                     footer: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           context.read<CartProvider>().addCart(data[index]);
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white.withOpacity(0.8),
//                         ),
//                         child: const Text(
//                           "Add to cart",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           GoRouter.of(context).push('/cart');
//         },
//         child: const Icon(Icons.shop),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/provider.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<Map<String, String>> data = [
    {"name": "Item 1", "price": " KWD 6.00"},
    {"name": "Item 2", "price": " KWD 15.00"},
    {"name": "Item 3", "price": " KWD 8.00"},
    {"name": "Item 4", "price": " KWD 20.00"},
    {"name": "Item 5", "price": " KWD 18.00"},
    {"name": "Item 6", "price": " KWD 6.00"},
    {"name": "Item 7", "price": " KWD 7.00"},
    {"name": "Item 8", "price": " KWD 5.00"},
  ];

  List<String> images = [
    'assets/Images/skincare1.png',
    'assets/Images/skencare2.png',
    'assets/Images/skencare3.png',
    'assets/Images/skencare4.png',
    'assets/Images/skincare5.png',
    'assets/Images/skincare6.png',
    'assets/Images/skincare7.png',
    'assets/Images/skencare8.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        title: const Text("View Items"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: GridTile(
                    header: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index]["name"]!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            data[index]["price"]!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: Container(), // Placeholder for the main content
                    footer: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          context
                              .read<CartProvider>()
                              .addCart(data[index]["name"]!);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                        child: const Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push('/cart');
        },
        child: const Icon(Icons.shop),
      ),
    );
  }
}
