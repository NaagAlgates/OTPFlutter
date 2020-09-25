import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/model/otp_model.dart';
import 'package:xam_otp_flutter/feature/otp/repository/otp_api_client.dart';
import 'package:xam_otp_flutter/feature/otp/repository/otp_repository.dart';

class MockOtpApiClient extends Mock implements OtpApiClient {}

// ignore: must_be_immutable
class MockOtp extends Mock implements OtpModel {}

void main() {
  group('OtpRepository', () {
    OtpApiClient httpClient;
    OtpRepository repository;

    setUp(() {
      httpClient = MockOtpApiClient();
      repository = OtpRepository(otpApiClient: httpClient);
    });

    test('throws AssertionError when OtpRepository is null', () {
      expect(
        () => OtpRepository(otpApiClient: null),
        throwsAssertionError,
      );
    });

    group('getOtp', () {
      test('throws exception when response failure', () async {
        when(repository.getOtp("")).thenThrow('Error');
        try {
          await repository.getOtp("");
          throw ('should throw error');
        } catch (error) {
          expect(error, 'Error');
        }
      });
      test('otp 4 digit succeed',() async{
        final expected = MockOtp();
        when(httpClient.getOtp()).thenAnswer((realInvocation) => Future.value(expected));
        final actual = await repository.getOtp("");
        expect(actual, expected);
      });
    });
  });
}
