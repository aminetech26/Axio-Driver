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
    final recentActivities =
        dashboardData['recentActivities'] as List<Map<String, dynamic>>;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 2,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Tableau de bord',
                style: theme.textTheme.displaySmall?.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcomeCard(theme),
                  const SizedBox(height: 24),
                  _buildStatsGrid(stats, theme),
                  const SizedBox(height: 24),
                  _buildActiveMissionCard(activeMission, theme),
                  const SizedBox(height: 24),
                  _buildRecentActivities(
                    recentActivities,
                    theme,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeCard(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // Elegant shadow remains
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Increase font size via copyWith (or override fontSize)
                Text(
                  'Bonjour, Karim',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Prêt pour une nouvelle journée ?',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final accentColor = const Color(0xFF3949AB);
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
          accentColor,
          theme,
        ),
        _buildStatCard(
          'Ce mois',
          '${stats['deliveriesThisMonth']}',
          Icons.calendar_today,
          accentColor,
          theme,
        ),
        _buildStatCard(
          'Distance totale',
          '${stats['totalDistance']} km',
          Icons.route,
          accentColor,
          theme,
        ),
        _buildStatCard(
          'Note moyenne',
          '${stats['rating']}',
          Icons.star,
          accentColor,
          theme,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
    ThemeData theme,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // Elegant shadow remains
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Increase icon size to 24
          Icon(icon, color: color, size: 24),
          const Spacer(),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveMissionCard(
      Map<String, dynamic> mission, ThemeData theme) {
    final progress = (mission['progress'] as double) / 100;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // Elegant shadow remains
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mission en cours',
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              CircularPercentIndicator(
                radius: 35, // increased radius
                lineWidth: 5,
                percent: progress.clamp(0.0, 1.0),
                center: Text(
                  '${mission['progress'].toStringAsFixed(1)}%',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                progressColor: accentColor,
                backgroundColor: Colors.grey.shade200,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mission['destination'] ?? 'Mission',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '${mission['stopsCompleted']}/${mission['totalStops']} arrêts complétés',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivities(
      List<Map<String, dynamic>> activities, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Activités récentes',
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 16),
        if (activities.isEmpty)
          Center(
            child: Text(
              'Aucune activité récente',
              style: theme.textTheme.bodyMedium,
            ),
          )
        else
          ...activities.map((activity) => Card(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.local_shipping,
                        color: accentColor, size: 24), // increased icon size
                  ),
                  title: Text(
                    activity['title'] ?? '',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    activity['time'] ?? '',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              )),
      ],
    );
  }
}
