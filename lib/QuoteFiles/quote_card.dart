// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final double padding;
  final Function delete;
  QuoteCard({required this.quote, this.padding = 12.0, required this.delete});

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
          Text(
            quote.author,
            style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
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
