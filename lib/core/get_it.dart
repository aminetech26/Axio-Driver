import 'package:axio_driver/core/api_client.dart';
import 'package:axio_driver/view-models/map_viewmodel.dart';
import 'package:axio_driver/views/MapView/cubit/map_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

Future initDependencies() async {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<Dio>()));
  getIt.registerLazySingleton<MapViewmodel>(
      () => MapViewmodel(apiClient: getIt<ApiClient>()));
  getIt.registerFactory(() => MapCubit(mapViewmodel: getIt<MapViewmodel>()));
}
