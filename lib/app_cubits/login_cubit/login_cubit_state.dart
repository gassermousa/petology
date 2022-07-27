abstract class LoginCubitState {}

class LoginCubitInitial extends LoginCubitState {}

class LoginSuccessState extends LoginCubitState {
  final String token;

  LoginSuccessState(this.token);
}

class LoginFBSuccessState extends LoginCubitState {
  final String token;

  LoginFBSuccessState(this.token);
}
