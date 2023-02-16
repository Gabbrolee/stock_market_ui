import 'package:flutter/material.dart';
import 'package:testingggg/stock_headlines.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 8, bottom: 12),
            child: Column(
              children: [
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'My Stocks',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    const StockHeadLines(),
                    Container(
                      height: 1.0,
                      color: Colors.white,
                      margin: const EdgeInsets.only(top: 10, bottom: 40),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        buildStockItem(companyName: 'APPLE'),
                        buildStockItem(companyName: 'AMAZON'),
                        buildStockItem(companyName: 'TESLA'),
                        buildStockItem(companyName: 'MICROSOFT'),
                        buildStockItem(companyName: 'SUN PHARMA'),
                        buildStockItem(companyName: 'FORD'),
                      ]),
                )
              ],
            ),
          ),
        ));
  }

  Card buildStockItem({required String companyName}) {
    return Card(
      elevation: 0.0,
      color: Colors.grey.shade900,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Container(
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 8.0,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Text(
                    companyName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Invested ${12000.50}',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'Quantity ${100}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 8.0,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: const [
                  Text(
                    '123.45  +${1.15}%',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '120.10 Avg',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '125.10 LTP',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          )),
    );
  }

}


