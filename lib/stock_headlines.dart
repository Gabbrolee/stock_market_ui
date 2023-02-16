import 'package:flutter/material.dart';

class StockHeadLines extends StatelessWidget {
  const StockHeadLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildStockHeadlines(
              margin: const EdgeInsets.symmetric(vertical: 3),
              text: 'Total Performance \n Till last trading day'),
          buildStockHeadlines(
              margin: EdgeInsets.zero, text: '${1235.25} \n  ${15.15}%'),
          const SizedBox(
            width: 20,
          ),
          buildStockHeadlines(
            margin: EdgeInsets.zero,
            text: 'Today\'s \n Performance',
          ),
          buildStockHeadlines(
              margin: const EdgeInsets.symmetric(vertical: 3),
              text: '1235.25 \n  15.15%')
        ],
      ),
    );
  }

  Card buildStockHeadlines(
      {required EdgeInsetsGeometry margin, required String text}) {
    return Card(
      elevation: 3.0,
      color: Colors.grey.shade900,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
          margin: margin,
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              )
            ],
          )),
    );
  }
}
