import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/mock_data.dart';
import 'package:axio_driver/views/ProfileView/widgets/profile_header.dart';
import 'package:axio_driver/views/ProfileView/widgets/profile_stats_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final profileData = MockData.profileData['data'] as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(profile: profileData),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ProfileStatsCard(
                      stats: profileData['stats'] as Map<String, dynamic>),
                  const SizedBox(height: 16),
                  _buildInfoSection(
                    title: 'Informations personnelles',
                    icon: Icons.person,
                    children: [
                      _InfoTile(
                        icon: Icons.email,
                        title: 'Email',
                        value: profileData['email'],
                      ),
                      _InfoTile(
                        icon: Icons.phone,
                        title: 'Téléphone',
                        value: profileData['phone'],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildLicenseSection(profileData['license']),
                  const SizedBox(height: 16),
                  _buildVehicleSection(profileData['currentVehicle']),
                  const SizedBox(height: 16),
                  _buildCertificatesSection(profileData['certificates']),
                  const SizedBox(height: 24),
                  _LogoutButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return _SectionCard(
      title: title,
      icon: icon,
      children: children,
    );
  }

  Widget _buildLicenseSection(Map<String, dynamic> license) {
    return _SectionCard(
      title: 'Permis de conduire',
      icon: Icons.badge,
      children: [
        _InfoTile(
          icon: Icons.credit_card,
          title: 'Numéro',
          value: license['number'],
        ),
        _InfoTile(
          icon: Icons.category,
          title: 'Type',
          value: license['type'],
        ),
        _InfoTile(
          icon: Icons.event,
          title: 'Date d\'expiration',
          value: DateTime.parse(license['expiryDate']).toString().split(' ')[0],
        ),
      ],
    );
  }

  Widget _buildVehicleSection(Map<String, dynamic> vehicle) {
    return _SectionCard(
      title: 'Véhicule actuel',
      icon: Icons.local_shipping,
      children: [
        _InfoTile(
          icon: Icons.directions_car,
          title: 'Modèle',
          value: vehicle['model'],
        ),
        _InfoTile(
          icon: Icons.tag,
          title: 'Immatriculation',
          value: vehicle['plate'],
        ),
      ],
    );
  }

  Widget _buildCertificatesSection(List<dynamic> certificates) {
    return _SectionCard(
      title: 'Certificats',
      icon: Icons.workspace_premium,
      children: certificates
          .map((cert) => _InfoTile(
                icon: Icons.check_circle,
                title: cert['name'],
                value:
                    'Valide jusqu\'au ${DateTime.parse(cert['expiryDate']).toString().split(' ')[0]}',
              ))
          .toList(),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _SectionCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primaryBlue),
                const SizedBox(width: 8),
                Text(title, style: theme.textTheme.headlineMedium),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryBlue, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
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

class _LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: () {
        // Add logout logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.logout, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            'Déconnexion',
            style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
