import 'package:axio_driver/core/get_it.dart';
import 'package:axio_driver/views/MapView/cubit/map_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:axio_driver/core/app_colors.dart';

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
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => _mapCubit,
      child: BlocConsumer<MapCubit, MapState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (_) {},
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.redError,
                  content: Text(message,
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: AppColors.surfaceColor)),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backgroundColor,
            appBar: AppBar(
              backgroundColor: AppColors.surfaceColor,
              title: Text("Mission de livraison",
                  style: theme.textTheme.displaySmall),
              centerTitle: true,
            ),
            body: state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.primaryBlue),
              ),
              success: (destinationResponse) {
                final trip = destinationResponse.data.trip;
                final truck = destinationResponse.data.truck;

                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "assets/mission.jpg",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 24),
                      Card(
                        elevation: 4,
                        color: AppColors.surfaceColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Informations de la mission",
                                style: theme.textTheme.displayMedium,
                              ),
                              const SizedBox(height: 16),
                              ListTile(
                                leading: const Icon(Icons.calendar_today,
                                    color: AppColors.iconActive),
                                title: Text("Date de début",
                                    style: theme.textTheme.headlineMedium),
                                subtitle: Text(
                                  trip.predefinedStartDate
                                      .toLocal()
                                      .toString()
                                      .split('.')[0],
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: AppColors.textSecondary),
                                ),
                              ),
                              ListTile(
                                leading: const Icon(Icons.timer,
                                    color: AppColors.iconActive),
                                title: Text("Durée estimée",
                                    style: theme.textTheme.headlineMedium),
                                subtitle: Text(
                                  "${trip.predefinedEndDate.difference(trip.predefinedStartDate).inDays} jours",
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: AppColors.textSecondary),
                                ),
                              ),
                              const Divider(
                                  height: 32, color: AppColors.borderLight),
                              Text(
                                "Véhicule assigné",
                                style: theme.textTheme.displayMedium,
                              ),
                              const SizedBox(height: 16),
                              ListTile(
                                leading: const Icon(Icons.local_shipping,
                                    color: AppColors.iconActive),
                                title: Text(truck.model,
                                    style: theme.textTheme.headlineMedium),
                                subtitle: Text(
                                    "Immatriculation: ${truck.plate}",
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                        color: AppColors.textSecondary)),
                              ),
                              ListTile(
                                leading: const Icon(Icons.straighten,
                                    color: AppColors.iconActive),
                                title: Text("Dimensions",
                                    style: theme.textTheme.headlineMedium),
                                subtitle: Text(
                                  "${truck.length}m × ${truck.width}m × ${truck.height}m",
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: AppColors.textSecondary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          GoRouter.of(context).go('/mapViewRoute');
                        },
                        icon: const Icon(Icons.navigation,
                            color: AppColors.surfaceColor),
                        label: Text(
                          "Démarrer la navigation",
                          style: theme.textTheme.headlineMedium
                              ?.copyWith(color: AppColors.surfaceColor),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (message) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            "https://img.freepik.com/free-vector/no-data-illustration-concept_108061-573.jpg",
                        height: 200,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Aucune mission en cours",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
