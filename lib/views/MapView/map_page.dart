import 'package:axio_driver/core/get_it.dart';
import 'package:axio_driver/views/MapView/cubit/map_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late MapCubit _mapCubit;

  @override
  void initState() {
    super.initState();
    _mapCubit = getIt<MapCubit>();
    _mapCubit.fetchCurrentTrip();
  }

  @override
  void dispose() {
    super.dispose();
    _mapCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _mapCubit,
        child: const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Map Page"),
            ),
          ),
        ));
  }
}
