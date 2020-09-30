part of 'flag_bloc.dart';

abstract class FlagEvent extends Equatable {
}

class FetchFlag extends FlagEvent{
  final int countryCode;
  FetchFlag({@required this.countryCode}): assert(countryCode>0);
  @override
  List<Object> get props => [countryCode];
}

class ResetFlag extends FlagEvent{
  @override
  List<Object> get props => [];
}