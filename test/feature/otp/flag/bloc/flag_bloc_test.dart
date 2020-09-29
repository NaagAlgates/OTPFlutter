
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/flag/bloc/flag_bloc.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_api_client.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_repository.dart';

class MockCountryApiClient extends Mock implements CountryApiClient {}
class MockCountryBloc extends Mock{}

void main(){
  group('CountryBloc',(){
    CountryApiClient countryApiClient;
    FlagBloc blocFlag;
    CountryRepository countryRepository;

    setUp((){
      countryApiClient = MockCountryApiClient();
      countryRepository = CountryRepository(countryApiClient: countryApiClient);
      blocFlag = FlagBloc(countryRepository: countryRepository);
    });

    tearDown((){
      blocFlag?.close();
    });

    test('Check Default Otp state',(){
      expect(blocFlag.state, FlagFetchInitial());
    });
  });
}