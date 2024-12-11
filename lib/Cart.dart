import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/provider/cart_provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
      body: Consumer<CartProvider>(
        builder: (context, provider, _) {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: provider.cart.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: Border.all(color: Colors.black),
                        title: Text(
                          provider.cart[index][0],
                          style: const TextStyle(
                            fontSize: 18, // Set the desired font size here
                          ),
                        ),
                        subtitle: Text("${provider.cart[index][1]} KWD"),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.black),
                          onPressed: () {
                            provider.removeCart(provider.cart[index][0], provider.cart[index][1]);
                            setState(() {
                              
                            });
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Total: KWD ${provider.total}",
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
          );
        }
      ),
    );
  }
}
