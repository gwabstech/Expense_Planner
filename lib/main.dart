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
      home:  const MyHomePage(title: 'Expense Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transaction =[
    Transaction(id: 't1',title: 'new Phone',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't2',title: 'Rice and stew',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't3',title: 'Yam and stew',amount: 500,dateTime: DateTime.now()),
    Transaction(id: 't4',title: 'Car Painting',amount: 500,dateTime: DateTime.now()),
  ];

  Widget addItem(String title, double amount,DateTime dateTime){
    return Card(
      elevation: 10.0,
      color: Colors.white60,
      margin: const EdgeInsets.all(10.0),
      shadowColor: Colors.green,
      child: Row(
        children:  [
         Container(
           padding: const EdgeInsets.all(10.0),
           margin: const EdgeInsets.all(10.0),
           child:  Text(
              '₦$amount',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),
            ),
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),),
              Text(dateTime.toString(),style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),),
            ],
          )
        ],
      ),
    );
  }
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
            height: 80,
            child: const Card(
              elevation: 10.0,
              color: Colors.white,
              margin: EdgeInsets.only(left: 10.0,top: 20.0,right: 10.0),
              shadowColor: Colors.green,
                child: Center(
                  child: Text(
                    'Expenses',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.lightBlue),
                  ),
                ),
              ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              // mapping the list to a widget
             children: transaction.map((tx){
               return addItem(tx.title, tx.amount, DateTime.now());
             }).toList()
            ),
          )

        ],
    ));
  }
}
