import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/flag/bloc/flag_bloc.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_api_client.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_repository.dart';
import 'package:xam_otp_flutter/utilities/check_network.dart';

class MockCountryApiClient extends Mock implements CountryApiClient {}

class MockCountryBloc extends Mock {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final country =
      CountryCodeModelEntity(flag: "https://restcountries.eu/data/ind.svg");
  group('CountryBloc', () {
    CountryApiClient countryApiClient;
    FlagBloc blocFlag;
    CountryRepository countryRepository;

    setUp(() {
      NetworkAnalyzer connectionStatus = NetworkAnalyzer.getInstance();
      connectionStatus.initialize();
      countryApiClient = MockCountryApiClient();
      countryRepository = CountryRepository(countryApiClient: countryApiClient);
      blocFlag = FlagBloc(countryRepository: countryRepository);
    });

    tearDown(() {
      blocFlag?.close();
    });

    test('Check Default Otp state', () {
      expect(blocFlag.state, FlagFetchInitial());
    });

    group('Check Success response data', () {
      blocTest('emit [FlagLoading,FlagFetchSuccess] when valid result',
          build: () {
            when(countryRepository.fetchCountryData(91)).thenAnswer(
              (_) => Future.value(country),
            );
            return blocFlag;
          },
          act: (bloc) => bloc.add(FetchFlag(countryCode: 91)),
          expect: [
            FlagLoading(),
            FlagFetchSuccess(flagUrl: country.flag)
          ]
      );
    });
  });
}
