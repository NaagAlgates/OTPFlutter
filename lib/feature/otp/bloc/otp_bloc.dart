import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpDefault());

  @override
  Stream<OtpState> mapEventToState(
    OtpEvent event,
  ) async* {
    if(event is ResetOtp)
      yield OtpDefault();
    else if( event is GenerateOtp)
      yield OtpGenerateSuccess();
    else if (event is ValidateOtp)
      yield OtpValidationSuccess();
    else
      yield Loading();
  }
}
