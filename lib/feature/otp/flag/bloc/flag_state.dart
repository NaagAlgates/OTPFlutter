part of 'flag_bloc.dart';

abstract class FlagState extends Equatable {
  const FlagState();
}

class FlagFetchInitial extends FlagState {
  final flagUrl;
  FlagFetchInitial(this.flagUrl);
  @override
  List<Object> get props => [flagUrl];
}

class FlagFetchSuccess extends FlagState {
  final flagUrl;
  FlagFetchSuccess(this.flagUrl);
  @override
  List<Object> get props => [flagUrl];
}

class FlagFetchFailed extends FlagState {
  final flagUrl;
  FlagFetchFailed(this.flagUrl);
  @override
  List<Object> get props => [flagUrl];
}

class FlagLoading extends FlagState {
  FlagLoading();
  @override
  List<Object> get props => [];
}

class NoInternet extends FlagState {
  NoInternet();
  @override
  List<Object> get props => [];
}
