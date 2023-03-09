import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  MyHomePage(title: 'Expense Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({super.key, required this.title});
  final String title;
  final List<Transaction> transaction =[
    Transaction(id: 't1',title: 'new Phone',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't2',title: 'Rice and stew',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't3',title: 'Yam and stew',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't4',title: 'Car Painting',amount: 500,dateTime: DateTime.now()),
  ];
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
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              elevation: 5,
              color: Colors.yellow,
                child: Text(
                  'Chart',
                  textAlign: TextAlign.center,
                ),
              ),
          ),
          Container(
            width: double.infinity,
            child: const Card(
              elevation: 5,
              child: Text(
                  'list of transaction',
                textAlign: TextAlign.end,
              ),
            ),
          )

        ],
    ));
  }
}
