// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Oscar Wilde",
        text: "Be yourself: everyone else is already taken"),
    Quote(
        text: "I have nothing to declare except my genius",
        author: "Oscar Wilde"),
    Quote(
        text: "The truth is rarely pure and never simple",
        author: "Oscar Wilde")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
            children: quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              padding: 24.0,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                  print("Love");
                });
              });
        }).toList()));
  }
}
