import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/data/models/user_model.dart';
import 'package:petology/data/services/api_services.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.apiServices) : super(SignUpInitial());
  ApiServices apiServices;
  static SignUpCubit get(context) => BlocProvider.of(context);

  void signUp({required UserModel userModel}) {
    apiServices.registerUser(userModel).then((value) {
      emit(SignUpSuccessState(value));
    });
  }
}
