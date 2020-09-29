import 'package:flutter/cupertino.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';

import 'country_api_client.dart';

class CountryRepository{
  final CountryApiClient countryApiClient;

  CountryRepository({@required this.countryApiClient}): assert(countryApiClient!=null);

  Future<CountryCodeModelEntity> fetchCountryData(int countryCode) async{
    final response = await countryApiClient.getCountryData(countryCode);
    return response;
  }
}