import 'package:flutter/material.dart';
import 'package:axio_driver/core/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileHeader extends StatelessWidget {
  final Map<String, dynamic> profile;

  const ProfileHeader({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 24),
      decoration: const BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.surfaceColor,
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl: profile['photoUrl'],
                width: 96,
                height: 96,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '${profile['firstName']} ${profile['lastName']}',
            style: theme.textTheme.displayMedium?.copyWith(
              color: AppColors.surfaceColor,
            ),
          ),
          Text(
            'Chauffeur professionnel',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.surfaceColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
