import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  static const _minSplashDuration = Duration(milliseconds: 300);
  static const _slowNetworkMessageAfter = Duration(seconds: 2);
  static const _maxWaitDuration = Duration(seconds: 5);

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
      const Duration(seconds: 3),
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
            const _SplashLogo(width: 100, height: 100),
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

/// Splash logo using a local asset image for instant rendering (no network delay).
class _SplashLogo extends StatelessWidget {
  const _SplashLogo({required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.pink, offset: Offset(-2, 0), blurRadius: 12),
          BoxShadow(color: Colors.blue, offset: Offset(2, 0), blurRadius: 12),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/profile.jpeg',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: secondaryColor,
              alignment: Alignment.center,
              child: Icon(Icons.code, size: width * 0.6, color: Colors.amberAccent),
            );
          },
        ),
      ),
    );
  }
}
