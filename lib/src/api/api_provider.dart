import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:hr_app/src/model/http_result.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiProver {
  static Duration duration = const Duration(seconds: 30);
  String baseUrl = "https://apps.acibd.com/apps/hrmatters/";

  static Future<HttpResult> _postUrl(String url, data) async {
    print(url);
    print(data);
    var header = await _header();
    print(header);
    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            body: data,
            headers: header,
          )
          .timeout(duration);
      return _result(response);
    } on TimeoutException catch (_) {
      return HttpResult(
        isSuccess: false,
        statusCode: -1,
        result: "",
      );
    } on SocketException catch (_) {
      return HttpResult(
        isSuccess: false,
        statusCode: -1,
        result: "",
      );
    }
  }

  static Future<HttpResult> _getResponse(String url) async {
    // ignore: avoid_print
    print(url);
    try {
      http.Response response = await http
          .get(
            Uri.parse(url),
            headers: await _header(),
          )
          .timeout(duration);
      return _result(response);
    } on TimeoutException catch (_) {
      return HttpResult(
        isSuccess: false,
        statusCode: -1,
        result: "Internet error",
      );
    }
  }

  static HttpResult _result(http.Response response) {
    // ignore: avoid_print
    print(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return HttpResult(
        statusCode: response.statusCode,
        isSuccess: true,
        result: json.decode(
          utf8.decode(
            response.bodyBytes,
          ),
        ),
      );
    } else if (response.statusCode >= 500) {
      return HttpResult(
        statusCode: response.statusCode,
        isSuccess: false,
        result: "Server error",
      );
    } else {
      return HttpResult(
        statusCode: response.statusCode,
        isSuccess: false,
        result: json.decode(
          utf8.decode(
            response.bodyBytes,
          ),
        ),
      );
    }
  }

  static dynamic _header() async {
    return null;
  }

  Future<HttpResult> getAllBalance() async {
    String url = baseUrl + "leave/statusdata";
    return _getResponse(url);
  }

  Future<HttpResult> getAllHoliday() async {
    String url = baseUrl + "myleave/holidays?worklocation=All";
    return _getResponse(url);
  }

  Future<HttpResult> getAllFeedback() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString("userid") ?? "0";
    var data = {
      "UserID": id,
    };
    String url = baseUrl + "get_feedback";
    return await _postUrl(
      url,
      data,
    );
  }

  Future<HttpResult> setLogin(String id, String password) async {
    var data = {
      "userid": id,
      "password": password,
    };
    return await _postUrl(
      baseUrl + "authenticate/loginservice",
      data,
    );
  }
}
