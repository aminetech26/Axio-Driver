import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final historyData = MockData.historyData['data'] as List;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceColor,
        title: Text('Historique', style: theme.textTheme.displayMedium),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          final delivery = historyData[index] as Map<String, dynamic>;
          final startDate = DateTime.parse(delivery['startDate']);
          final endDate = DateTime.parse(delivery['endDate']);

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryBlue,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: AppColors.surfaceColor),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          delivery['destination'],
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: AppColors.surfaceColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.surfaceColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                                size: 16, color: Colors.amber[700]),
                            const SizedBox(width: 4),
                            Text(
                              '${delivery['rating']}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _InfoRow(
                        icon: Icons.calendar_today,
                        title: 'Date de début',
                        value: timeago.format(startDate, locale: 'fr'),
                        theme: theme,
                      ),
                      const Divider(height: 16),
                      _InfoRow(
                        icon: Icons.flag,
                        title: 'Date de fin',
                        value: timeago.format(endDate, locale: 'fr'),
                        theme: theme,
                      ),
                      const Divider(height: 16),
                      _InfoRow(
                        icon: Icons.straighten,
                        title: 'Distance parcourue',
                        value: '${delivery['distance']} km',
                        theme: theme,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.secondaryBlue,
                          foregroundColor: AppColors.primaryBlue,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: const Size(double.infinity, 44),
                        ),
                        onPressed: () {
                          // Show delivery details
                        },
                        child: const Text('Voir les détails'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final ThemeData theme;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.value,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppColors.primaryBlue),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              value,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
