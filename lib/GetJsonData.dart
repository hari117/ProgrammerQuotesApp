class Quote {
  String author;
  String sentance;

  @override
  String toString() {
    return 'Quotes{author: $author, sentance: $sentance}';
  }

  static List<Quote> fromJson(List<dynamic> list) {
    List<Quote> temp1 = List();

    for(Map<dynamic, dynamic> map in list)
    {
      Quote quote = Quote();
      quote.author = map['author'];
      quote.sentance = map['en'];
      temp1.add(quote);
    }

    return temp1;
  }
}
