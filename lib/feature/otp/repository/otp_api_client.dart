import 'dart:convert';
import 'dart:async';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:xam_otp_flutter/feature/otp/model/otp_model.dart';

enum OtpDigits{
  Four,
  Five,
  Six
}

class OtpApiClient{
  static const baseURl = 'https://run.mocky.io';
  static const apiVersion = 'v3';
  final http.Client httpClient;

  OtpApiClient({@required this.httpClient}):assert(httpClient!=null);

  Future<OtpModel> getOtp(OtpDigits digit) async{
    var endpoint="";
    switch(digit){
      case OtpDigits.Four: endpoint= "b6b09314-4f0f-42e6-90d7-f014bef8dbcf";
      break;
      case OtpDigits.Five: endpoint= "ff881c80-7cd1-4867-af9f-f982903ae9a2";
      break;
      case OtpDigits.Six: endpoint= "83b30968-118f-4b61-a90c-12211bd106fc";
      break;
      default: endpoint= "b6b09314-4f0f-42e6-90d7-f014bef8dbcf";
      break;
    }
    final otpUrl = '$baseURl/$apiVersion/$endpoint';
    final otpResponse = await this.httpClient.get(otpUrl);

    if(otpResponse.statusCode!=200)
      throw Exception('error getting otpData. Response code: ${otpResponse.statusCode}');

    final otpJson = jsonDecode(otpResponse.body);
    return OtpModel.fromJson(otpJson);
  }
}