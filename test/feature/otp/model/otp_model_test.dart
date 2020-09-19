import 'package:flutter_test/flutter_test.dart';
import 'package:xam_otp_flutter/feature/otp/model/otp_model.dart';

void main() {
  group('OTPModel test', () {
    final OtpModel otpModel = OtpModel(otp: '12345');
    test('Test OTP as String', () {
      expect(otpModel.props, ['12345']);
    });
    test('FromJson returns correct otp', () {
      final json = {"otp": "12345"};
      final actual = OtpModel.fromJson(json);
      expect(actual.otp,'12345');
    });
  });
}
