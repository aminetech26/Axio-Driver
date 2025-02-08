import 'package:axio_driver/models/osrm_response.dart';
import 'package:axio_driver/models/map_location.dart';
import 'package:axio_driver/view-models/route_viewmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_state.dart';
part 'route_cubit.freezed.dart';

class RouteCubit extends Cubit<RouteState> {
  final RouteViewmodel routeViewmodel;

  RouteCubit({required this.routeViewmodel})
      : super(const RouteState.initial());

  Future<void> getRoutes(List<MapLocation> locations) async {
    emit(const RouteState.loading());

    try {
      final routes = await routeViewmodel.getRoutesFromLocations(locations);
      if (routes.isEmpty) {
        emit(const RouteState.error("Aucun itinéraire trouvé."));
      } else {
        emit(RouteState.success(routes));
      }
    } catch (error) {
      emit(RouteState.error(error.toString()));
    }
  }
}
