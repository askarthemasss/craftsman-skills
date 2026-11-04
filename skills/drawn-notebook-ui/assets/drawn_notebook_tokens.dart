import 'package:flutter/material.dart';

/// Design tokens and palettes for the Drawn Notebook UI.
/// Authored by Mohamed Askar.
class DrawnNotebookTokens {
  DrawnNotebookTokens._();

  // ── Light Mode (Daylight Notebook) ──
  static const Color cream       = Color(0xFFF7F5F0);
  static const Color sage        = Color(0xFFEEF3ED);
  static const Color parchment   = Color(0xFFF1ECE3);
  static const Color warmWhite   = Color(0xFFFAF8F5);
  static const Color linen       = Color(0xFFF3EFE8);
  static const Color sageTint    = Color(0xFFEFF3EE);
  static const Color charcoal    = Color(0xFF1A1A1A);
  static const Color softBlack   = Color(0xFF2C2C2C);
  static const Color warmGrey    = Color(0xFF8A8580);
  static const Color lightGrey   = Color(0xFFC5BFB8);
  static const Color terracotta  = Color(0xFFB87A5A);
  static const Color gold        = Color(0xFFC4956A);
  static const Color goldDim     = Color(0x4DC4956A);
  static const Color blush       = Color(0xFFF0EBE5);
  static const Color sageDark    = Color(0xFF8B9E8B);

  // ── Dark Mode (Night Notebook) ──
  static const Color darkCream       = Color(0xFF141210);
  static const Color darkSage        = Color(0xFF171816);
  static const Color darkParchment   = Color(0xFF1A1815);
  static const Color darkWarmWhite   = Color(0xFF1E1B18);
  static const Color darkLinen       = Color(0xFF181614);
  static const Color darkSageTint    = Color(0xFF161815);
  static const Color darkCharcoal    = Color(0xFFEDE8E1);
  static const Color darkSoftBlack   = Color(0xFFD8D2C8);
  static const Color darkWarmGrey    = Color(0xFF9E978F);
  static const Color darkLightGrey   = Color(0xFF38342E);
  static const Color darkTerracotta  = Color(0xFFD98A62);
  static const Color darkGold        = Color(0xFFD4A373);
  static const Color darkGoldDim     = Color(0x4DD4A373);
  static const Color darkBlush       = Color(0xFF241E1A);
  static const Color darkSageDark    = Color(0xFF9EAF9E);

  // ── Surfaces ──
  static final Color lightCardGlass = const Color(0xFFFFFFFF).withOpacity(0.65);
  static final Color darkCardGlass  = const Color(0xFF1E1B18).withOpacity(0.72);
  static final Color lightBorder    = gold.withOpacity(0.22);
  static final Color darkBorder     = darkGold.withOpacity(0.22);

  // ── Durations & Curves ──
  static const Duration durationSlow = Duration(milliseconds: 1200);
  static const Duration durationMed  = Duration(milliseconds: 800);
  static const Duration durationFast = Duration(milliseconds: 350);
  static const Curve easeOut = Cubic(0.25, 0.46, 0.45, 0.94);
  static const Curve easeSmooth = Cubic(0.4, 0.0, 0.2, 1.0);

  // ── Prebuilt ThemeData ──
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: cream,
      colorScheme: const ColorScheme.light(
        primary: gold,
        secondary: terracotta,
        surface: warmWhite,
        onSurface: charcoal,
      ),
      fontFamily: 'Inter',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkCream,
      colorScheme: const ColorScheme.dark(
        primary: darkGold,
        secondary: darkTerracotta,
        surface: darkWarmWhite,
        onSurface: darkCharcoal,
      ),
      fontFamily: 'Inter',
    );
  }
}
