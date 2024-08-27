import 'dart:convert';
import '../data/models/Respone Model/response_model.dart';
import 'package:http/http.dart' as http;

class NetworkCaller {
  Future<ResponsedataModel> getRequest(String url, {String? token}) async {
    final http.Response response = await http.get(Uri.parse(url), headers: {
      'Content-type': 'application/json',
      
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      if (decodedResponse != null) {
        return ResponsedataModel(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: decodedResponse,
            );
      } else if (response.statusCode == 401) {
        print(response.statusCode);
        return ResponsedataModel(
            isSuccess: false,
            statusCode: response.statusCode,
            responseData: decodedResponse ?? 'Something went Wrong');
      } else if (response.statusCode == 500) {
        print(response.statusCode);
        return ResponsedataModel(
            isSuccess: false,
            statusCode: response.statusCode,
            responseData: decodedResponse ?? 'Something went Wrong');
      } else {
        return ResponsedataModel(
            isSuccess: false,
            statusCode: response.statusCode,
            responseData: decodedResponse ?? 'Something went Wrong');
      }
    } else {
      return ResponsedataModel(
          isSuccess: false, statusCode: response.statusCode, responseData: '');
    }
  }
  }