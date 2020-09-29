import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_api_client.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_repository.dart';

class MockCountryApiClient extends Mock implements CountryApiClient {}

// ignore: must_be_immutable
class MockCountryFlag extends Mock implements CountryCodeModelEntity {}

void main() {
  group('Country Repository Test', () {
    CountryApiClient httpClient;
    CountryRepository countryRepository;

    setUp(() {
      httpClient = MockCountryApiClient();
      countryRepository = CountryRepository(countryApiClient: httpClient);
    });

    test('throws AssertionError when OtpRepository is null', () {
      expect(
        () => CountryRepository(countryApiClient: null),
        throwsAssertionError,
      );
    });
    var countryCode = 91;
    group('get Country Data', () {
      test('throws exception when response failure', () async {
        when(countryRepository.fetchCountryData(countryCode))
            .thenThrow('Error');
        try {
          await countryRepository.fetchCountryData(countryCode);
          throw ('should throw error');
        } catch (error) {
          expect(error, 'Error');
        }
      });
      test('Valid country returned', () async {
        final expected = MockCountryFlag();
        when(countryRepository.fetchCountryData(countryCode))
            .thenAnswer((realInvocation) => Future.value(expected));
        final actual = await countryRepository.fetchCountryData(countryCode);
        expect(actual, expected);
      });
    });
  });
}
