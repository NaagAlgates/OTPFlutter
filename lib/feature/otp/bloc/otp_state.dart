part of 'otp_bloc.dart';

abstract class OtpState extends Equatable {
}

class OtpDefault extends OtpState {
  @override
  List<Object> get props => [];
}

class Loading extends OtpState {
  @override
  List<Object> get props => [];
}

class OtpGenerateSuccess extends OtpState {
  @override
  List<Object> get props => [];
}

class OtpGenerateFailure extends OtpState {
  @override
  List<Object> get props => [];
}

class OtpValidationSuccess extends OtpState {
  @override
  List<Object> get props => [];
}

class OtpValidationFailure extends OtpState {
  @override
  List<Object> get props => [];
}
