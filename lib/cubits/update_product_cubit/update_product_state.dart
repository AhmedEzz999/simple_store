part of 'update_product_cubit.dart';

sealed class UpdateProductState {}

final class UpdateProductInitial extends UpdateProductState {}

final class UpdateProductLoading extends UpdateProductState {}

final class UpdateProductSuccess extends UpdateProductState {}
