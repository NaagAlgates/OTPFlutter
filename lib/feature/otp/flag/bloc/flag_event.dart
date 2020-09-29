part of 'flag_bloc.dart';

abstract class FlagEvent extends Equatable {
}

class FetchFlag extends FlagEvent{
  final countryCode;
  FetchFlag(this.countryCode);
  @override
  List<Object> get props => [countryCode];
}

class ResetFlag extends FlagEvent{
  @override
  List<Object> get props => [];
}