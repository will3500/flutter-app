import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

const baseURL = "http://www.coopertransc.com.br/api_v1/public/api";

var token = "279|rq6YRN9p0o5qZZMXebkf6KU7XzvnSV8IQhQEMrOW";
var CooperadoID = 9;

class API {
  static Future getAvisos() async {
    var url = baseURL + "/avisos";

    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    });

    if (response.statusCode == 200) {
      return await response;
    } else {
      print("erro conexao API");
    }
  }


    static Future getVez() async {
    var url = baseURL + "/vez";

    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    });

    if (response.statusCode == 200) {
      return await response;
    } else {
      print("erro conexao API");
    }
  }


    static Future getViagem() async {
    var url = baseURL + "/viagens";

    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    });

    if (response.statusCode == 200) {
      
      return await response;
      
    } else {
      print("erro conexao API");
    }
  }



      static Future getminhaViagem() async {
    var url = baseURL + "/viagens/$CooperadoID";

    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    });

    if (response.statusCode == 200) {
      
      return await response;
      
    } else {
      print("erro conexao API");
    }
  }
}
