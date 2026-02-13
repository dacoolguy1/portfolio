import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  static const _minSplashDuration = Duration(milliseconds: 1400);
  static const _slowNetworkMessageAfter = Duration(seconds: 4);
  static const _maxWaitDuration = Duration(seconds: 12);

  bool _showSlowNetworkHint = false;
  bool _isNavigating = false;

  Future<void> _prepareAndNavigate() async {
    if (_isNavigating) return;
    _isNavigating = true;

    final completer = Completer<void>();
    Timer(_slowNetworkMessageAfter, () {
      if (mounted && !completer.isCompleted) {
        setState(() => _showSlowNetworkHint = true);
      }
    });

    final minimumDelay = Future.delayed(_minSplashDuration);
    final fontsLoaded = GoogleFonts.pendingFonts().timeout(
      const Duration(seconds: 8),
      onTimeout: () => <void>[],
    );
    final ready = Future.wait<void>([
      minimumDelay,
      fontsLoaded.then((_) {}),
    ]);

    await Future.any([
      ready,
      Future.delayed(_maxWaitDuration),
    ]);

    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _prepareAndNavigate());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImageContainer(width: 100, height: 100),
            const SizedBox(height: defaultPadding * 1.5),
            const SizedBox(
              width: 36,
              height: 36,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.amberAccent),
                backgroundColor: secondaryColor,
              ),
            ),
            const SizedBox(height: defaultPadding),
            Text(
              'Loading portfolio…',
              style: TextStyle(
                color: bodyTextColor,
                fontSize: 14,
              ),
            ),
            if (_showSlowNetworkHint) ...[
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: Text(
                  'Taking longer than usual? Check your connection.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: bodyTextColor.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
