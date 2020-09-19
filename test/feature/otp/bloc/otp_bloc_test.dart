import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xam_otp_flutter/feature/otp/bloc/otp_bloc.dart';

class MockOtpBloc extends Mock{}

void main(){

  group('OtpBloc',(){
    MockOtpBloc mockOtp;
    OtpBloc blocOtp;

    setUp((){
      mockOtp = MockOtpBloc();
      blocOtp = OtpBloc();
    });

    tearDown((){
      blocOtp?.close();
    });

    test('Check Default Otp state',(){
      expect(blocOtp.state, OtpDefault());
    });
  });
}