import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/app_cubits/login_cubit/login_cubit_state.dart';
import 'package:petology/data/services/api_services.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  final ApiServices apiServices;
  LoginCubit(this.apiServices) : super(LoginCubitInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  void loginFunction({required String email, required String password}) {
    apiServices.loginFunction(email, password).then((value) {
      emit(LoginSuccessState(value));
    });
  }

  void loginUserWithEmail() {
    apiServices.loginUserWithFB().then((value) {
      emit(LoginSuccessState(value));
    });
  }
}
