// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_apps/QuoteFiles/egw_quote_card.dart';
import 'QuoteFiles/quote.dart';

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
  List<EGWQuote> quotes = [];
  String text = "";
  String page = "";
  String book = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
          children: <Widget>[] +
              quotes.map((quote) {
                return EGWQuoteCard(
                    quote: quote,
                    padding: 24.0,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                        print("Love");
                      });
                    });
              }).toList() +
              <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Quote",
                        ),
                        onChanged: (value) {
                          setState(() => text = value);
                          print(text);
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Book",
                        ),
                        onChanged: (value) {
                          setState(() {
                            if (value == "AH") {
                              book = "Adventist Home";
                            } else {
                              book = value;
                            }
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Page:",
                        ),
                        onChanged: (value) {
                          setState(() => page = value);
                          print(text);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      print(text);
                      quotes.add(EGWQuote(
                        book: book,
                        page: page,
                        text: text,
                      ));
                      quotes.sort((EGWQuote a, EGWQuote b) {
                        double result =
                            double.parse(a.page) - double.parse(b.page);
                        return (result * 10).toInt();
                      });
                    })
                  },
                  child: Text("Add quote"),
                ),
              ]),
    );
  }
}
