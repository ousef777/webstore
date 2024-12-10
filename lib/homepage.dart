import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/provider.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  Homepage({super.key});

  List data = [
    "Item 1",
    "Item 2",
    "Item 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Home"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10,),
            Expanded(
              // height: 400,
              // width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      // tileColor: Colors.red,
                      shape: Border.all(color: Colors.red),
                      leading: Text(data[index]),
                      trailing: TextButton(
                        onPressed: () {
                          context.read<CartProvider>().addCart(data[index]);
                        },
                        style: const ButtonStyle(), 
                        child: const Text("Add to cart")
                      ),
                    ),
                  );
                },
              ),
            ),
          ]
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