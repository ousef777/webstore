// // // // import 'package:flutter/material.dart';
// // // // import 'package:go_router/go_router.dart';
// // // // import 'package:provider/provider.dart';
// // // // import 'package:webstore/provider.dart';

// // // // class Cart extends StatelessWidget {
// // // //   const Cart({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //         appBar: AppBar(
// // // //           // backgroundColor: Colors.blue,
// // // //           title: const Text("Cart"),
// // // //         ),
// // // //         body: Column(
// // // //           children: [
// // // //             const SizedBox(
// // // //               height: 10,
// // // //             ),
// // // //             Expanded(
// // // //               // height: 400,
// // // //               // width: double.infinity,
// // // //               child: Consumer<CartProvider>(builder: (context, provider, _) {
// // // //                 return ListView.builder(
// // // //                   itemCount: provider.cart.length,
// // // //                   itemBuilder: (context, index) {
// // // //                     return Padding(
// // // //                       padding: const EdgeInsets.all(8.0),
// // // //                       child: ListTile(
// // // //                         // tileColor: Colors.red,
// // // //                         shape: Border.all(color: Colors.red),
// // // //                         leading: Text(provider.cart[index]),
// // // //                       ),
// // // //                     );
// // // //                   },
// // // //                 );
// // // //               }),
// // // //             ),
// // // //             const Row(
// // // //               mainAxisAlignment: MainAxisAlignment.end,
// // // //               children: [
// // // //                 Padding(
// // // //                   padding: EdgeInsets.all(8.0),
// // // //                   child: Text(
// // // //                     "Total: KWD 50",
// // // //                     style: TextStyle(fontSize: 40),
// // // //                   ),
// // // //                 )
// // // //               ],
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 30,
// // // //             ),
// // // //             ElevatedButton(
// // // //                 onPressed: () {
// // // //                   GoRouter.of(context).push('/checkout');
// // // //                 },
// // // //                 style: const ButtonStyle(
// // // //                     backgroundColor: WidgetStatePropertyAll(Colors.blue),
// // // //                     fixedSize: WidgetStatePropertyAll(Size(200, 75))),
// // // //                 child: const Text(
// // // //                   "Checkout",
// // // //                   style: TextStyle(fontSize: 24),
// // // //                 )),
// // // //             const SizedBox(
// // // //               height: 30,
// // // //             )
// // // //           ],
// // // //         ));
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:webstore/provider.dart';

// // // class Cart extends StatelessWidget {
// // //   const Cart({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor:
// // //             Colors.white.withOpacity(0.8), // Set AppBar background color
// // //         title: const Text(
// // //           "Cart",
// // //           style: TextStyle(
// // //               color:
// // //                   Colors.black), // Set title color to contrast with background
// // //         ),
// // //         iconTheme: const IconThemeData(
// // //             color: Colors.black), // Set icon color to contrast with background
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           const SizedBox(
// // //             height: 10,
// // //           ),
// // //           Expanded(
// // //             child: Consumer<CartProvider>(builder: (context, provider, _) {
// // //               return ListView.builder(
// // //                 itemCount: provider.cart.length,
// // //                 itemBuilder: (context, index) {
// // //                   return Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: ListTile(
// // //                       shape: Border.all(color: Colors.red),
// // //                       leading: Text(provider.cart[index]),
// // //                     ),
// // //                   );
// // //                 },
// // //               );
// // //             }),
// // //           ),
// // //           const Row(
// // //             mainAxisAlignment: MainAxisAlignment.end,
// // //             children: [
// // //               Padding(
// // //                 padding: EdgeInsets.all(8.0),
// // //                 child: Text(
// // //                   "Total: \$50",
// // //                   style: TextStyle(fontSize: 40),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //           const SizedBox(
// // //             height: 30,
// // //           ),
// // //           ElevatedButton(
// // //             onPressed: () {
// // //               GoRouter.of(context).push('/checkout');
// // //             },
// // //             style: ElevatedButton.styleFrom(
// // //               backgroundColor: Colors.blue,
// // //               fixedSize: const Size(
// // //                   200, 75), // Adjust size to match the "Pay Now" button
// // //             ),
// // //             child: const Text(
// // //               "Checkout",
// // //               style: TextStyle(fontSize: 24),
// // //             ),
// // //           ),
// // //           const SizedBox(
// // //             height: 30,
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:provider/provider.dart';
// // import 'package:webstore/provider.dart';

// // class Cart extends StatelessWidget {
// //   const Cart({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor:
// //             Colors.white.withOpacity(0.8), // Set AppBar background color
// //         title: const Text(
// //           "Cart",
// //           style: TextStyle(
// //               color:
// //                   Colors.black), // Set title color to contrast with background
// //         ),
// //         centerTitle: true, // Center title in AppBar
// //         iconTheme: const IconThemeData(
// //             color: Colors.black), // Set icon color to contrast with background
// //       ),
// //       body: Column(
// //         children: [
// //           const SizedBox(
// //             height: 10,
// //           ),
// //           Expanded(
// //             child: Consumer<CartProvider>(builder: (context, provider, _) {
// //               return ListView.builder(
// //                 itemCount: provider.cart.length,
// //                 itemBuilder: (context, index) {
// //                   return Padding(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: ListTile(
// //                       shape: Border.all(color: Colors.red),
// //                       leading: Text(provider.cart[index]),
// //                     ),
// //                   );
// //                 },
// //               );
// //             }),
// //           ),
// //           const Row(
// //             mainAxisAlignment: MainAxisAlignment.end,
// //             children: [
// //               Padding(
// //                 padding: EdgeInsets.all(8.0),
// //                 child: Text(
// //                   "Total: KWD 50",
// //                   style: TextStyle(fontSize: 40),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           const SizedBox(
// //             height: 30,
// //           ),
// //           ElevatedButton(
// //             onPressed: () {
// //               GoRouter.of(context).push('/checkout');
// //             },
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor:
// //                   Colors.white.withOpacity(0.8), // Set background color
// //               padding: const EdgeInsets.symmetric(
// //                   horizontal: 10, vertical: 5), // Match button padding
// //             ),
// //             child: const Text(
// //               "Checkout",
// //               style: TextStyle(
// //                 color: Colors.black, // Set text color
// //                 fontSize: 20, // Set font size
// //               ),
// //             ),
// //           ),
// //           const SizedBox(
// //             height: 40,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'package:webstore/provider.dart';

// class Cart extends StatelessWidget {
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:
//             Colors.white.withOpacity(0.8), // Set AppBar background color
//         title: const Text(
//           "Cart",
//           style: TextStyle(
//               color:
//                   Colors.black), // Set title color to contrast with background
//         ),
//         centerTitle: true, // Center title in AppBar
//         iconTheme: const IconThemeData(
//             color: Colors.black), // Set icon color to contrast with background
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: Consumer<CartProvider>(builder: (context, provider, _) {
//               return ListView.builder(
//                 itemCount: provider.cart.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                       shape: Border.all(color: Colors.black),
//                       leading: Text(provider.cart[index]),
//                     ),
//                   );
//                 },
//               );
//             }),
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   "Total: KWD 50",
//                   style: TextStyle(fontSize: 25),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).push('/checkout');
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor:
//                   Colors.white.withOpacity(0.8), // Set button background color
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 10, vertical: 5), // Match button padding
//             ),
//             // style: ElevatedButton.styleFrom(
//             //   backgroundColor:
//             //       Colors.white.withOpacity(0.8), // Set background color
//             //   padding: const EdgeInsets.symmetric(
//             //       horizontal: 10, vertical: 5), // Match button padding
//             // ),
//             child: const Text(
//               "Checkout",
//               style: TextStyle(
//                 color: Colors.black, // Set text color
//                 fontSize: 20, // Set font size
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'package:webstore/provider.dart';

// class Cart extends StatelessWidget {
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:
//             Colors.white.withOpacity(0.8), // Set AppBar background color
//         title: const Text(
//           "Cart",
//           style: TextStyle(
//             color: Colors.black, // Set title color to contrast with background
//           ),
//         ),
//         centerTitle: true, // Center title in AppBar
//         iconTheme: const IconThemeData(
//           color: Colors.black, // Set icon color to contrast with background
//         ),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: Consumer<CartProvider>(builder: (context, provider, _) {
//               return ListView.builder(
//                 itemCount: provider.cart.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                       shape: Border.all(color: Colors.black),
//                       leading: Text(
//                         provider.cart[index],
//                         style: const TextStyle(
//                           fontSize: 18, // Set the desired font size here
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }),
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   "Total: KWD 50",
//                   style: TextStyle(fontSize: 25),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).push('/checkout');
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor:
//                   Colors.white.withOpacity(0.8), // Set button background color
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 10, vertical: 5), // Match button padding
//             ),
//             child: const Text(
//               "Checkout",
//               style: TextStyle(
//                 color: Colors.black, // Set text color
//                 fontSize: 20, // Set font size
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.white.withOpacity(0.8), // Set AppBar background color
        title: const Text(
          "Cart",
          style: TextStyle(
            color: Colors.black, // Set title color to contrast with background
          ),
        ),
        centerTitle: true, // Center title in AppBar
        iconTheme: const IconThemeData(
          color: Colors.black, // Set icon color to contrast with background
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Consumer<CartProvider>(builder: (context, provider, _) {
              return ListView.builder(
                itemCount: provider.cart.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: Border.all(color: Colors.black),
                      leading: Text(
                        provider.cart[index],
                        style: const TextStyle(
                          fontSize: 18, // Set the desired font size here
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.black),
                        onPressed: () {
                          provider.removeCart(provider.cart[index]);
                        },
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Total: KWD 50",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push('/checkout');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.white.withOpacity(0.8), // Set button background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 5), // Match button padding
            ),
            child: const Text(
              "Checkout",
              style: TextStyle(
                color: Colors.black, // Set text color
                fontSize: 20, // Set font size
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
