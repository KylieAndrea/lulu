part of 'info_bloc.dart';

@immutable
sealed class InfoState {
  const InfoState();

  List<Object> get props => [];

}

final class InfoInitial extends InfoState {}

final class InfoSuccess extends InfoState {
  final Info info;
  const InfoSuccess(this.info);

  @override
  List<Object> get props => [info];
}

final class InfoLoading extends InfoState {}

final class InfoFailed extends InfoState {}

