import 'package:flutter/material.dart';
import '../widgets/wave_painter.dart';

/// Main animation screen.
/// Demonstrates smooth infinite water wave animation.
class WaterWaveScreen extends StatefulWidget {
  const WaterWaveScreen({super.key});

  @override
  State<WaterWaveScreen> createState() => _WaterWaveScreenState();
}

class _WaterWaveScreenState extends State<WaterWaveScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    /// Controls animation duration and repetition
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // infinite loop animation
  }

  @override
  void dispose() {
    /// Always dispose controllers to prevent memory leaks
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("WaveFlow Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) {
            return CustomPaint(
              size: const Size(320, 220),
              painter: WavePainter(_controller.value),
            );
          },
        ),
      ),
    );
  }
}
