part of 'flag_bloc.dart';

abstract class FlagState extends Equatable {
  const FlagState();
}

class FlagFetchInitial extends FlagState {
  FlagFetchInitial();
  @override
  List<Object> get props => [];
}

class FlagFetchSuccess extends FlagState {
  final flagUrl;
  FlagFetchSuccess({this.flagUrl});
  @override
  List<Object> get props => [flagUrl];
}

class FlagFetchFailed extends FlagState {
  FlagFetchFailed();
  @override
  List<Object> get props => [];
}

class FlagFetchException extends FlagState {
  FlagFetchException();
  @override
  List<Object> get props => [];
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
