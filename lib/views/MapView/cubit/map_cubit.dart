import 'package:axio_driver/models/destination_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:axio_driver/view-models/map_viewmodel.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  final MapViewmodel mapViewmodel;

  MapCubit({required this.mapViewmodel}) : super(const MapState.initial());

  Future<void> fetchCurrentTrip() async {
    emit(const MapState.loading());

    try {
      final destinationResponse = await mapViewmodel.getDriverCurrentTrip();
      if (destinationResponse == null || destinationResponse.success == false) {
        emit(const MapState.error("Error fetching current trip"));
      } else {
        emit(MapState.success(destinationResponse));
      }
    } catch (error) {
      emit(MapState.error(error.toString()));
    }
  }
}
