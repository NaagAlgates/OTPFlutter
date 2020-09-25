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
  static const endpoint="83b30968-118f-4b61-a90c-12211bd106fc";
  final http.Client httpClient;

  OtpApiClient({@required this.httpClient}):assert(httpClient!=null);

  Future<OtpModel> getOtp() async{
    final otpUrl = '$baseURl/$apiVersion/$endpoint';
    final otpResponse = await this.httpClient.get(otpUrl);
    if(otpResponse==null)
      throw NullThrownError();
    if(otpResponse.statusCode!=200)
      throw Exception('error getting otpData. Response code: ${otpResponse.statusCode}');

    final otpJson = jsonDecode(otpResponse.body);
    return OtpModel.fromJson(otpJson);
  }
}