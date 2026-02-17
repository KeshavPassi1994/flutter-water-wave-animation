import 'package:flutter/material.dart';
import 'presentation/water_wave_screen.dart';

/// Application Entry Point
/// This demo showcases custom animation skills using Flutter.
void main() {
  runApp(const WaveFlowApp());
}

class WaveFlowApp extends StatelessWidget {
  const WaveFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterWaveScreen(),
    );
  }
}
