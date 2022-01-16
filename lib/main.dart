import 'package:flutter/material.dart';
import 'package:learn_provider/cart1.dart';
import 'package:learn_provider/cart2.dart';
import 'package:learn_provider/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      //It provide instance of the Cart() to all listeners.
      //create: (context) => Cart(),
      value: Cart(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Provider Demo'),
          routes: {
            '/view-cart': (ctx) => CartView(),
            '/add-cart': (ctx) => CartAdd(),
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/view-cart',
              );
            },
            child: Text('View Cart'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/add-cart',
              );
            },
            child: Text('Add Cart'),
          ),
        ],
      ),
    );
  }
}
