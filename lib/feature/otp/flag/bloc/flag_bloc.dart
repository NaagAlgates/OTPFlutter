import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:xam_otp_flutter/feature/otp/bloc/otp_bloc.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_repository.dart';

part 'flag_event.dart';

part 'flag_state.dart';

class FlagBloc extends Bloc<FlagEvent, FlagState> {
  final CountryRepository countryRepository;

  FlagBloc({@required this.countryRepository})
      : assert(countryRepository != null),
        super(FlagFetchInitial());

  @override
  Stream<FlagState> mapEventToState(
    FlagEvent event,
  ) async* {
    yield FlagLoading();
    if (event is FetchFlag) {
      _loadFlag(event.countryCode);
    }
  }

  _loadFlag(countryCode) async* {
    final countryFlag = await countryRepository.fetchCountryData(countryCode);
    if(countryFlag!=null) {
      yield FlagFetchSuccess(countryFlag.flag);
    }else
      yield FlagFetchFailed();
  }
}
