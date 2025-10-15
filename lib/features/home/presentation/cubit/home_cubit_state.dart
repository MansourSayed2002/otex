part of 'home_cubit_cubit.dart';

@immutable
sealed class HomeState extends Equatable {}

final class HomeCubitInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

final class HomeLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

final class Homeuccess extends HomeState {
  Homeuccess({required this.products});
  final List<ProductModel> products;

  @override
  List<Object?> get props => [products];
}

final class HomeError extends HomeState {
  HomeError({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

final class HomeCategoryLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

final class HomeCategoryuccess extends HomeState {
  HomeCategoryuccess({required this.categories});
  final List<SubCategotyModel> categories;

  @override
  List<Object?> get props => [categories];
}

final class HomeCategoryError extends HomeState {
  HomeCategoryError({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}
