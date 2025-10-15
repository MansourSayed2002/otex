part of 'advertisement_cubit.dart';

sealed class AdvertisementState extends Equatable {}

final class AdvertisementInitial extends AdvertisementState {
  @override
  List<Object> get props => [];
}

final class AdvertisementLoading extends AdvertisementState {
  @override
  List<Object> get props => [];
}

final class AdvertisementSuccess extends AdvertisementState {
  AdvertisementSuccess({required this.plans});
  final List<PlansModel> plans;

  @override
  List<Object?> get props => [];
}

final class AdvertisementError extends AdvertisementState {
  AdvertisementError({required this.message});
  final String message;

  @override
  List<Object?> get props => [];
}
