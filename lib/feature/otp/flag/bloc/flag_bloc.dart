import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:xam_otp_flutter/feature/otp/bloc/otp_bloc.dart';
import 'package:xam_otp_flutter/feature/otp/flag/model/country_code_model_entity.dart';
import 'package:xam_otp_flutter/feature/otp/flag/repository/country_repository.dart';
import 'package:xam_otp_flutter/utilities/check_network.dart';

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
    if (event is FetchFlag) {
      yield* _loadFlag(event.countryCode);
    }
  }

  Stream<FlagState> _loadFlag(countryCode) async* {
    yield FlagLoading();
    try {
      var isConnected = NetworkAnalyzer.getInstance();

      if (isConnected.hasConnection) {
            final countryData = await countryRepository.fetchCountryData(countryCode);
            if (countryData != null) {
              yield FlagFetchSuccess(flagUrl: countryData.flag);
            } else
              yield FlagFetchFailed();
           } else
             yield NoInternet();
    } catch (e) {
      yield FlagFetchException();
    }
  }
}
