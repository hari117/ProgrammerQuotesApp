import 'package:flutter/material.dart';
import 'UI.dart';


void main()
{
  runApp(ProgramQuotes());
}


class ProgramQuotes extends StatefulWidget {
  @override
  _ProgramQuotesState createState() => _ProgramQuotesState();
}

class _ProgramQuotesState extends State<ProgramQuotes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Body());
  }
}

