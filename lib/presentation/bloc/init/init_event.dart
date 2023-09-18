part of 'init_bloc.dart';

sealed class InitEvent extends Equatable {
  const InitEvent();

  @override
  List<Object> get props => [];
}

final class SkipOnboardingEvent extends InitEvent {}

final class NextOnboardingEvent extends InitEvent {}

final class RegisterOnboardingEvent extends InitEvent {}

final class LoginOnboardingEvent extends InitEvent {}
