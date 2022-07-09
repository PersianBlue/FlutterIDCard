// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter_apps/QuoteFiles/quote.dart';

class EGWQuoteCard extends StatelessWidget {
  final EGWQuote quote;
  final double padding;
  final Function delete;

  EGWQuoteCard(
      {Key? key,
      required this.quote,
      this.padding = 12.0,
      required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(height: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
              Text(
                "Book: ${quote.book}",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
              Text(
                "Page: ${quote.page}",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          TextButton(
            onPressed: () => {delete()},
            child: Row(
              children: [Icon(Icons.delete), Text("Delete quote")],
            ),
          ),
        ]),
      ),
    );
  }
}
