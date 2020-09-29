import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_api_client.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockCountryDataResponse extends Mock implements http.Response {}

void main() {
  MockHttpClient httpClient;
  CountryApiClient apiClient;
  group('Test Country response data', () {
    setUp(() {
      httpClient = MockHttpClient();
      apiClient = CountryApiClient(httpClient: httpClient);
    });

    test('throws AssertionError when httpClient is null', () {
      expect(() => CountryApiClient(httpClient: null), throwsAssertionError);
    });

    group('Fetch Country data', () {
      test('throw exception when response code != 200', () async {
        final response = MockCountryDataResponse();
        when(response.statusCode).thenReturn(500);
        when(httpClient.get('https://restcountries.eu/rest/v2/callingcode/91'))
            .thenAnswer((realInvocation) => Future.value(response));
        try {
          await apiClient.getCountryData(91);
          fail('should throw exception 500');
        } catch (error) {
          expect(error.toString(),
              'Exception: error getting otpData. Response code: 500');
        }
      });
      test('return Country data when httpClient return 200', () async {
        final resultJson =
            '''[{"name":"India","topLevelDomain":[".in"],"alpha2Code":"IN","alpha3Code":"IND","callingCodes":["91"],"capital":"New Delhi","altSpellings":["IN","Bhārat","Republic of India","Bharat Ganrajya"],"region":"Asia","subregion":"Southern Asia","population":1295210000,"latlng":[20.0,77.0],"demonym":"Indian","area":3287590.0,"gini":33.4,"timezones":["UTC+05:30"],"borders":["AFG","BGD","BTN","MMR","CHN","NPL","PAK","LKA"],"nativeName":"भारत","numericCode":"356","currencies":[{"code":"INR","name":"Indian rupee","symbol":"₹"}],"languages":[{"iso639_1":"hi","iso639_2":"hin","name":"Hindi","nativeName":"हिन्दी"},{"iso639_1":"en","iso639_2":"eng","name":"English","nativeName":"English"}],"translations":{"de":"Indien","es":"India","fr":"Inde","ja":"インド","it":"India","br":"Índia","pt":"Índia","nl":"India","hr":"Indija","fa":"هند"},"flag":"https://restcountries.eu/data/ind.svg","regionalBlocs":[{"acronym":"SAARC","name":"South Asian Association for Regional Cooperation","otherAcronyms":[],"otherNames":[]}],"cioc":"IND"}]''';
        final response = MockCountryDataResponse();
        when(response.statusCode).thenReturn(200);
        when(response.body).thenReturn(resultJson);
        when(
          httpClient.get('https://restcountries.eu/rest/v2/callingcode/91'),
        ).thenAnswer((realInvocation) => Future.value(response));

        final countryDataActual = await apiClient.getCountryData(91);
        expect(countryDataActual.alpha2Code, "IN");
        expect(countryDataActual.callingCodes.first, "91");
        expect(countryDataActual.region, "Asia");
      });
    });
  });
}
