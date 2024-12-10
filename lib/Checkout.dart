import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoForm(_formKey),
            const SizedBox(height: 30,),
            paymentForm(_formKey2),
            const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    bool val = !_formKey.currentState!.validate();
                    bool val2 = !_formKey2.currentState!.validate();
                    if (val || val2) return;
                    _formKey.currentState!.save();
                    _formKey2.currentState!.save();
                  }, 
                  child: const Text("Submit")
                )
          ]
        )
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
                const SizedBox(height: 15,),
                // Expanded(
                //   child: Row(
                //     children: [
                //       TextFormField(
                //         decoration: const InputDecoration(labelText: "First Name", border: OutlineInputBorder()),
                //       ),
                //       TextFormField(
                //         decoration: const InputDecoration(labelText: "Last Name", border: OutlineInputBorder()),
                //       )
                //     ],
                //   ),
                // ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Address", border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) return "fill the empty blank";
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(labelText: "CVV", border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) return "fill the empty blank";
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Exp date", hintText: "MM/YY", border: OutlineInputBorder()),
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
                const SizedBox(height: 15,),
                TextFormField(
                  keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                        // for below version 2 use this
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), 
                      // for version 2 and greater youcan also use this
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  decoration: const InputDecoration(labelText: "Card Number", hintText: "0000 0000 0000 0000", border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) return "fill the empty blank";
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                      // for below version 2 use this
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), 
                    // for version 2 and greater youcan also use this
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLength: 3,
                  decoration: const InputDecoration(labelText: "CVV", border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) return "fill the empty blank";
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Exp date", hintText: "MM/YY", border: OutlineInputBorder()),
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