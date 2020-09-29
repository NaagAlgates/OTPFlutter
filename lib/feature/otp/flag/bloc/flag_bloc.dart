import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xam_otp_flutter/feature/otp/bloc/otp_bloc.dart';

part 'flag_event.dart';
part 'flag_state.dart';

class FlagBloc extends Bloc<FlagEvent, FlagState> {
  FlagBloc() : super(FlagFetchInitial(""));

  @override
  Stream<FlagState> mapEventToState(
    FlagEvent event,
  ) async* {
    yield FlagLoading();
    if(event is FetchFlag) {
      _loadFlag(event.countryCode);
    }
  }

  _loadFlag(countryCode) {

  }
}
