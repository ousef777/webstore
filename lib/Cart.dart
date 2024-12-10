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
          // backgroundColor: Colors.blue,
          title: const Text("Cart"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              // height: 400,
              // width: double.infinity,
              child: Consumer<CartProvider>(builder: (context, provider, _) {
                return ListView.builder(
                  itemCount: provider.cart.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        // tileColor: Colors.red,
                        shape: Border.all(color: Colors.red),
                        leading: Text(provider.cart[index]),
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
                    "Total: \$50",
                    style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/checkout');
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    fixedSize: WidgetStatePropertyAll(Size(200, 75))),
                child: const Text(
                  "Checkout",
                  style: TextStyle(fontSize: 24),
                )),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
