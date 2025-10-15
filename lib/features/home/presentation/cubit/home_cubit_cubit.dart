import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:otex/core/class/api_result.dart';
import 'package:otex/features/home/data/model/sub_categoty_model.dart';
import 'package:otex/features/home/data/model/product_model.dart';
import 'package:otex/features/home/data/repo/home_repo.dart';

part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeCubitInitial());

  Future<void> getProduct() async {
    emit(HomeLoading());
    var result = await HomeRepo.getProducts();
    if (result is ApiSuccess) {
      emit(Homeuccess(products: result.data));
    } else {
      emit(HomeError(message: result.error));
    }
  }

  Future<void> getCategories() async {
    emit(HomeCategoryLoading());
    var result = await HomeRepo.getCategories();
    if (result is ApiSuccess) {
      emit(HomeCategoryuccess(categories: result.data));
    } else {
      emit(HomeCategoryError(message: result.error));
    }
  }
}
