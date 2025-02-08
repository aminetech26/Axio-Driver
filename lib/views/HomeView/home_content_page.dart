import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dashboardData =
        MockData.dashboardData['data'] as Map<String, dynamic>;
    final stats = dashboardData['stats'] as Map<String, dynamic>;
    final activeMission =
        dashboardData['activeMission'] as Map<String, dynamic>;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tableau de bord',
                  style: theme.textTheme.displayLarge,
                ),
                const SizedBox(height: 24),
                _buildStatsGrid(stats, theme),
                const SizedBox(height: 24),
                _buildActiveMission(activeMission, theme),
                const SizedBox(height: 24),
                _buildRecentActivities(
                  (dashboardData['recentActivities'] as List)
                      .cast<Map<String, dynamic>>(),
                  theme,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatsGrid(Map<String, dynamic> stats, ThemeData theme) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard(
          'Livraisons totales',
          '${stats['totalDeliveries']}',
          Icons.local_shipping,
          theme,
        ),
        _buildStatCard(
          'Ce mois',
          '${stats['deliveriesThisMonth']}',
          Icons.calendar_today,
          theme,
        ),
        _buildStatCard(
          'Distance totale',
          '${stats['totalDistance']} km',
          Icons.route,
          theme,
        ),
        _buildStatCard(
          'Note moyenne',
          '${stats['rating']}',
          Icons.star,
          theme,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    ThemeData theme,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: AppColors.primaryBlue),
            const Spacer(),
            Text(
              value,
              style: theme.textTheme.displayMedium?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveMission(Map<String, dynamic> mission, ThemeData theme) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mission en cours',
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 8,
                  percent: mission['progress'] / 100,
                  center: Text(
                    '${mission['progress']}%',
                    style: theme.textTheme.bodyMedium,
                  ),
                  progressColor: AppColors.primaryBlue,
                  backgroundColor: AppColors.secondaryBlue,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mission['destination'],
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${mission['stopsCompleted']}/${mission['totalStops']} arrêts complétés',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivities(
    List<Map<String, dynamic>> activities,
    ThemeData theme,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Activités récentes',
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: 16),
            ...activities
                .map((activity) => _buildActivityItem(activity, theme)),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(Map<String, dynamic> activity, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.secondaryBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              activity['type'] == 'delivery_completed'
                  ? Icons.check_circle
                  : Icons.local_shipping,
              color: AppColors.primaryBlue,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity['description'],
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  DateTime.parse(activity['timestamp']).toString(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
