import 'package:flutter/material.dart';
import 'package:webstore/Cart.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:webstore/Checkout.dart';
import 'package:webstore/homepage.dart';
import 'package:webstore/provider/cart_provider.dart';
import 'package:webstore/provider/payment_provider.dart';
import 'package:webstore/services/payment.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
      ChangeNotifierProvider<PaymentProvider>(create: (_) => PaymentProvider())
    ],
    child: const MainApp(),
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/home', // Main page
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => Homepage(),
        ),
        GoRoute(
          path: '/cart',
          builder: (context, state) => Cart(),
        ),
        GoRoute(
          path: '/checkout',
          builder: (context, state) => Checkout(),
        )
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
