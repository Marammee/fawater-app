part of 'bills_cubit.dart';

@immutable
sealed class BillsState {}

final class BillsInitial extends BillsState {}

class BillsLoadingImage extends BillsState {}

class BillsLoadedImage extends BillsState {}
