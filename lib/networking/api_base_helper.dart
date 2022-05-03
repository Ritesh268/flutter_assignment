import 'dart:io';
import 'package:flutter_assignment/networking/api_exceptions.dart';
import 'package:flutter_assignment/utilities/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ApiBaseHelper {
  Future<dynamic> get() async {
    // ignore: prefer_typing_uninitialized_variables
    var responseJson;
    var url = Constants.apiPort;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = _returnResponse(response);
      // print("API Response $responseJson");
    } on SocketException {
      // ignore: avoid_print
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    // print('api get recieved!');
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(utf8.decode(response.bodyBytes));
        // print(responseJson);

        return responseJson;

      case 401:
      case 415:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
