part of 'otp_bloc.dart';

abstract class OtpEvent extends Equatable {
}

class GenerateOtp extends OtpEvent{
  @override
  List<Object> get props => [];
}

class ValidateOtp extends OtpEvent{
  @override
  List<Object> get props => [];
}

class ResetOtp extends OtpEvent{
  @override
  List<Object> get props => [];
}