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
                'https://run.mocky.io/v3/b6b09314-4f0f-42e6-90d7-f014bef8dbcf'))
            .thenAnswer((realInvocation) => Future.value(response));
        try {
          await otpApiClient.getOtp(OtpDigits.Four);
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
            'https://run.mocky.io/v3/b6b09314-4f0f-42e6-90d7-f014bef8dbcf'))
            .thenAnswer((realInvocation) => Future.value(response));
          final optData = await otpApiClient.getOtp(OtpDigits.Four);
        expect(optData.otp,'1234');
      });
    });
  });
}
