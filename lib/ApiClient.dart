import 'package:dio/dio.dart';
import 'GetJsonData.dart';

class GetQuoteClient {
  Dio _dio = Dio();

  String url = "https://programming-quotes-api.herokuapp.com/quotes/lang/en";

  Future<List<Quote>> getQuotes() {

    Future<Response> urlData = _dio.get(url);

    Future<List<Quote>> finalData = urlData.then((value) {

      List<dynamic> listOfMap = value.data;

      List<Quote> listOfQuotes = Quote.fromJson(listOfMap);
      return listOfQuotes;
    }).catchError((error) {
      print("getQuotes.catchError $error");
      return Future.error(error);
    });

    return finalData;
  }
}
