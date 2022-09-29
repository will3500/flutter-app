import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;


const baseURL = "http://www.coopertransc.com.br/api_v1/public/api";

  class API{
    static Future getAvisos() async{
      
      var url= baseURL + "/avisos";
      var token = "279|rq6YRN9p0o5qZZMXebkf6KU7XzvnSV8IQhQEMrOW";

      
      http.Response response = await http.get(
        Uri.parse(url),
        headers: {
            "Content-Type" : "application/json",
            "Authorization" : "Bearer $token"
        }
        
        
        );
        if(response.statusCode==200){
          print("ok");
          return await response;
          
        }else{
          print("erro conexao API");
        }
      
    }
}