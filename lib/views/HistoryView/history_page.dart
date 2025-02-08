import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  String _formatDate(String dateStr) {
    final date = DateTime.parse(dateStr);
    return DateFormat.yMMMd().format(date);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final historyData = MockData.historyData;
    final deliveries = historyData['data'] as List;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Historique',
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue,
        elevation: 4,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: deliveries.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          final delivery = deliveries[index];
          final start = _formatDate(delivery['startDate']);
          final end = _formatDate(delivery['endDate']);
          return InkWell(
            onTap: () {
              // TODO: Navigate to detail view
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header row: Destination and status icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          delivery['destination'] ?? 'Destination inconnue',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 28,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Divider(color: Colors.grey.shade300, thickness: 1),
                  const SizedBox(height: 8),
                  // Dates row
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 20, color: Colors.grey),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          'De $start à $end',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Info row: Distance and Rating
                  Row(
                    children: [
                      const Icon(Icons.local_shipping,
                          size: 20, color: AppColors.primaryBlue),
                      const SizedBox(width: 4),
                      Text(
                        'Distance: ${delivery['distance']} km',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star, size: 20, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        '${delivery['rating']}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
