import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/homepage.dart';
import 'package:webstore/provider/cart_provider.dart';
import 'package:webstore/provider/payment_provider.dart';
import 'package:webstore/services/payment.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  int cardNumber = 0;
  double amount = 0;

  @override
  Widget build(BuildContext context) {
    amount = context.read<CartProvider>().total;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.white.withOpacity(0.8), // Set AppBar background color
        title: const Text(
          "Checkout",
          style: TextStyle(
              color:
                  Colors.black), // Set title color to contrast with background
        ),
        iconTheme: const IconThemeData(
            color: Colors.black), // Set icon color to contrast with background
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoForm(_formKey),
            const SizedBox(height: 30),
            paymentForm(_formKey2),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool val = !_formKey.currentState!.validate();
                bool val2 = !_formKey2.currentState!.validate();
                if (val || val2) return;
                _formKey.currentState!.save();
                _formKey2.currentState!.save();

                // Show success dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Payment Successful"),
                      content: const Text(
                          "Your payment has been processed successfully."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white
                    .withOpacity(0.8), // Set button background color
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5), // Match button padding
              ),
              child: const Text(
                "Pay Now",
                style: TextStyle(
                  color: Colors.black, // Set text color
                  fontSize: 20, // Set font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentForm(GlobalKey<FormState> formKey) {
  return SizedBox(
    width: 300,
    child: Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Text(
                "Payment form",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              // for below version 2 use this
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              // for version 2 and greater youcan also use this
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: const InputDecoration(
                labelText: "Card Number",
                hintText: "0000 0000 0000 0000",
                border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
            onSaved: (newValue) {
              cardNumber = int.parse(newValue!);
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              // for below version 2 use this
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              // for version 2 and greater youcan also use this
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLength: 3,
            decoration: const InputDecoration(
                labelText: "CVV", border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Exp date",
                hintText: "MM/YY",
                border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
          ),
        ],
      ),
    ),
  );
  }

}

Widget infoForm(GlobalKey<FormState> formKey) {
  return SizedBox(
    width: 300,
    child: Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Text(
                "Info form",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(height: 15),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
                labelText: "Address", border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              FilteringTextInputFormatter.digitsOnly,
            ],
            maxLength: 3,
            decoration: const InputDecoration(
                labelText: "CVV", border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Exp date",
                hintText: "MM/YY",
                border: OutlineInputBorder()),
            validator: (value) {
              if (value!.isEmpty) return "fill the empty blank";
              return null;
            },
          ),
        ],
      ),
    ),
  );
}
