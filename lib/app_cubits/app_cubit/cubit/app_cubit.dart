import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_state.dart';
import 'package:petology/data/models/footer_model.dart';
import 'package:petology/data/models/pets_needs_model.dart';
import 'package:petology/data/repository/repository.dart';
import 'package:petology/data/services/api_services.dart';
import 'package:petology/presentation/componentes/footer.dart';

class AppCubit extends Cubit<AppState> {
  final AppRepository appRepository;
  AppCubit(this.appRepository) : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  FooterModel? footerModel;
  void footerData() {
    emit(GetFooterDataLoadingState());
    appRepository.footerData().then((value) {
      emit(GetFooterDataSuccessState(value));
      footerModel = value;
    });
  }

  late List<PetsNeedsModel> petsneedsmodel = [];
  List<PetsNeedsModel> petsNeedsData() {
    emit(GetPetsNeedsDataLoadingState());
    print('petsssssssss');
    appRepository.petsNeedsData().then((value) {
      emit(GetPetsNeedsDaataSuccessState(value));
      petsneedsmodel = value;
    });
    print(petsneedsmodel.length);
    return petsneedsmodel;
  }
}
