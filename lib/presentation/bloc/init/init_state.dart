part of 'init_bloc.dart';

sealed class InitState extends Equatable {
  const InitState();

  @override
  List<Object> get props => [];
}

final class LoadingAppState extends InitState {}

final class OnboardindStateA extends InitState {}

final class OnboardindStateB extends InitState {}

final class OnboardindStateC extends InitState {}
