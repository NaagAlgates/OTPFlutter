import 'dart:convert';
import 'dart:async';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:xam_otp_flutter/feature/otp/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/generated/json/base/json_convert_content.dart';

class CountryApiClient{
  static const baseURl = 'https://restcountries.eu';
  static const apiVersion = 'rest/v2/callingcode';
  final http.Client httpClient;

  CountryApiClient({@required this.httpClient}):assert(httpClient!=null);

  Future<CountryCodeModelEntity> getCountryData(int countryCode) async{
    final countryFetchUrl = '$baseURl/$apiVersion/${countryCode.toString()}';
    final countryResponse = await this.httpClient.get(countryFetchUrl);
    if(countryResponse==null)
      throw NullThrownError();
    if(countryResponse.statusCode!=200)
      throw Exception('error getting otpData. Response code: ${countryResponse.statusCode}');

    final countryDataJson = jsonDecode(countryResponse.body);
    return JsonConvert.fromJsonAsT(countryDataJson);
  }
}