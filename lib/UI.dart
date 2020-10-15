import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:proquotes/CustomizedText.dart';
import 'ApiClient.dart';
import 'dart:math';
import 'package:loading/loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'GetJsonData.dart';
import 'package:random_color/random_color.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GetQuoteClient getQuoteClient = GetQuoteClient();
  List<Quote> _quote;
  String sentance;
  String author;
  int number;
  bool isLoading = false;
  bool isError = false;
  CustomizedText customizedText = CustomizedText();
  Random rng = new Random();
  @override
  void initState() {
    super.initState();
    callUpdate();
    setState(() {});
  }

  callUpdate() {
    isLoading = true;
    isError = false;
    setState(() {});
    getQuoteClient.getQuotes().then((listOfQuotes) {
      _quote = listOfQuotes;
      isLoading = false;
      isError = false;
      Random random = Random();
      number = random.nextInt(499);
      sentance = listOfQuotes[number].sentance;
      author = listOfQuotes[number].author;
      setState(() {});
    }).catchError((error) {
      setState(() {});
      isLoading = false;
      isError = true;
      print(
          "second catch occured isloading value: $isLoading isError value : $isError");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: appbar(),
      body: page(context),
      //body(),
    );
  }

  page(BuildContext context) {
    if (isLoading == true) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Loading(
                indicator: BallPulseIndicator(),
                size: 100.0,
                color: Colors.white),
          ));
    } else if (isError == true && isLoading == false) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Check Your Internet Connection \n try Again",
              style: customizedText.sentanceText,
            ),
          )));
    } else if (isLoading == false && isError == false) {
      int number = rng.nextInt(_quote.length);
      print("tha random number is $number");
      return PageView.builder(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: _quote.length,
          itemBuilder: (_, pos) {
            RandomColor _randomColor = RandomColor();

            Color _color = _randomColor.randomColor();
            return Container(
              color: _color,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text("Get Inspired.",
                          style: customizedText.getInspiredText),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "${_quote[rng.nextInt(_quote.length)].sentance}",
                        style: customizedText.sentanceText,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Author : ${_quote[rng.nextInt(_quote.length)].author}",
                        style: customizedText.authorText,
                      ),
                    ],
                  ),
                ),
              ),
            );
            ;
          });
    }
  }

  appbar() {
    return AppBar(
      title: Text("print(Quotes)",
          style: GoogleFonts.eater(fontSize: 25, letterSpacing: 2.5)),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            setState(() {});
            callUpdate();
          },
          iconSize: 30,
          color: Colors.white,
        )
      ],
      elevation: 10,
      backgroundColor: Colors.black,
    );
  }
}
