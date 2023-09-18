part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class SingInState extends AuthState {}

final class ForgetPasswordState extends AuthState {}

final class ResetPasswordState extends AuthState {}

final class CreateAccountState extends AuthState {}

final class EmailVareficationState extends AuthState {}
