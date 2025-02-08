import 'dart:ui';

class AppColors {
  AppColors._();

  // Background and Neutral Colors
  static const backgroundColor =
      Color(0xFFF3F4F6); // Light grey background (Minimalism, Propreté)
  static const surfaceColor =
      Color(0xFFFFFFFF); // White for surfaces (Clarté, espace)
  static const onSurfaceColor = Color(
      0xFF111827); // Charcoal black for contrast (Texte, contrastes forts)

  // Primary Colors
  static const primaryBlue =
      Color(0xFF1E3A8A); // Deep blue (Sérieux, professionnel)
  static const primaryVariant =
      Color(0xFF60A5FA); // Lighter blue (Modernité, innovation)

  // Secondary Colors
  static const secondaryBlue =
      Color(0xFFE0ECFF); // Soft blue for secondary elements
  static const secondaryGrey =
      Color(0xFFD1D5DB); // Neutral grey for UI elements
  static const secondaryAccent = Color(0xFF93C5FD); // Soft accent blue

  // Text Colors
  static const textPrimary = Color(0xFF111827); // Charcoal black for main text
  static const textSecondary =
      Color(0xFF4B5563); // Dark grey for secondary text
  static const textHint = Color(0xFF9CA3AF); // Light grey for hint text

  // Icon Colors
  static const iconActive = Color(0xFF1E3A8A); // Deep blue for active icons
  static const iconInactive =
      Color(0xFF6B7280); // Medium grey for inactive icons

  // Border Colors
  static const borderLight = Color(0xFFE5E7EB); // Light grey for borders
  static const borderDark = Color(0xFF9CA3AF); // Darker grey for borders

  // Error Colors
  static const redError =
      Color(0xFFDC2626); // Error color for notifications and alerts
}
