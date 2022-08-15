part of 'catalog_cubit.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.loading() = _Loading;
  const factory CatalogState.loaded([
    @Default([]) List<Product> products,
  ]) = _Loaded;
}
