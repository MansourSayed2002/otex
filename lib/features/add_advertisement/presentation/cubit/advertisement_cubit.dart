import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:otex/core/class/api_result.dart';
import 'package:otex/features/add_advertisement/data/model/plans_model.dart';
import 'package:otex/features/add_advertisement/data/repo/package_repo.dart';

part 'advertisement_state.dart';

class AdvertisementCubit extends Cubit<AdvertisementState> {
  AdvertisementCubit() : super(AdvertisementInitial());

  Future<void> getPackages() async {
    emit(AdvertisementLoading());
    var result = await PackageRepo.getPackages();
    if (result is ApiSuccess) {
      emit(AdvertisementSuccess(plans: result.data));
    } else if (result is ApiFailure) {
      emit(AdvertisementError(message: result.message));
    }
  }

  go() {
    print("go");
  }
}
