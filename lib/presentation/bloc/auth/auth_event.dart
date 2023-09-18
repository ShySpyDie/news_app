part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class SingInEvent extends AuthEvent {}

final class SingInWithGoogleEvent extends AuthEvent {}

final class SingInWithFacebookEvent extends AuthEvent {}

final class ForgetPasswordEvent extends AuthEvent {}

final class CreateAccountPageEvent extends AuthEvent {}

final class ArrowBackEvent extends AuthEvent {}

final class LogInPageEvent extends AuthEvent {}

final class SendRequestEvent extends AuthEvent {}

final class ResetPasswordEvent extends AuthEvent {}

final class CreateAccountEvent extends AuthEvent {}

final class CreateAccountWithGoogleEvent extends AuthEvent {}

final class ResentCodeEvent extends AuthEvent {}

final class VerifiedMeEvent extends AuthEvent {}
