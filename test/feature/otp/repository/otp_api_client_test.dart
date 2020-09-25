import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/repository/otp_api_client.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockOtpResponse extends Mock implements http.Response {}

void main() {
  group('Otp Web API client', () {
    http.Client httpClient;
    OtpApiClient otpApiClient;

    setUp(() {
      httpClient = MockHttpClient();
      otpApiClient = OtpApiClient(httpClient: httpClient);
    });

    test('throws AssertionError when httpClient is null', () {
      expect(() => OtpApiClient(httpClient: null), throwsAssertionError);
    });

    group('getOtp', () {

      test('throw exception when response code != 200', () async {
        final response = MockOtpResponse();
        when(response.statusCode).thenReturn(500);
        when(httpClient.get(
                'https://run.mocky.io/v3/83b30968-118f-4b61-a90c-12211bd106fc'))
            .thenAnswer((realInvocation) => Future.value(response));
        try {
          await otpApiClient.getOtp();
          fail('should throw exception 500');
        } catch (error) {
          expect(error.toString(), 'Exception: error getting otpData. Response code: 500');
        }
      });

      test('check when status code == 200', () async {
        final json = '''{"otp":"1234"}''';
        final response = MockOtpResponse();
        when(response.statusCode).thenReturn(200);
        when(response.body).thenReturn(json);
        when(httpClient.get(
            'https://run.mocky.io/v3/83b30968-118f-4b61-a90c-12211bd106fc'))
            .thenAnswer((realInvocation) => Future.value(response));
          final optData = await otpApiClient.getOtp();
        expect(optData.otp,'1234');
      });
    });
  });
}
