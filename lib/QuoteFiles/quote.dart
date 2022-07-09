import 'dart:convert';

class Quote {
  String text = "";
  String author = "";

  Quote({this.text = "", this.author = ""});
}

Quote myQuote = Quote(text: "this is the quote text", author: "oscar wilde");

class EGWQuote extends Quote {
  String book = "";
  String page = "";
  static List<EGWQuote> quotes = [];

  EGWQuote({text = "", this.book = "", this.page = ""})
      : super(text: text, author: "Ellen G. White");

  void setQuote(String text) {
    this.text = text;
  }

  void setBook(String book) {
    this.book = book;
  }

  void setPage(String page) {
    this.page = page;
  }

  void addQuote(EGWQuote quote) {
    quotes.add(quote);
  }

  Map toJson() => {
        'text': text,
        'author': author,
        'book': book,
        'page': page,
      };

  @override
  String toString() {
    return jsonEncode(this);
  }
}
