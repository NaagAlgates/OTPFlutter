
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/repository/country_api_client.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockCountryDataResponse extends Mock implements http.Response {}

void main(){
  MockHttpClient httpClient;
  CountryApiClient apiClient;
  group('Test Country response data',(){

    setUp((){
      httpClient = MockHttpClient();
      apiClient = CountryApiClient(httpClient: httpClient);
    });

    test('throws AssertionError when httpClient is null', () {
      expect(() => CountryApiClient(httpClient: null), throwsAssertionError);
    });

    group('Fetch Country data',(){
      test('throw exception when response code != 200',() async {
        final response = MockCountryDataResponse();
        when(response.statusCode).thenReturn(500);
        when(httpClient.get(
            'https://restcountries.eu/rest/v2/callingcode/91'))
            .thenAnswer((realInvocation) => Future.value(response));
        try {
          await apiClient.getCountryData(91);
          fail('should throw exception 500');
        } catch (error) {
          expect(error.toString(), 'Exception: error getting otpData. Response code: 500');
        }
      });
    });
  });
}