import 'package:petology/data/models/footer_model.dart';
import 'package:petology/data/models/pets_needs_model.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class GetFooterDataLoadingState extends AppState {}

class GetFooterDataSuccessState extends AppState {
  final FooterModel model;

  GetFooterDataSuccessState(this.model);
}

class GetPetsNeedsDataLoadingState extends AppState {}

class GetPetsNeedsDaataSuccessState extends AppState {
  final List<PetsNeedsModel> model;

  GetPetsNeedsDaataSuccessState(this.model);
}
