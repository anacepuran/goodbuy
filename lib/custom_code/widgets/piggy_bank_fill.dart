// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class PiggyBankFill extends StatefulWidget {
  const PiggyBankFill({
    super.key,
    this.width,
    this.height,
    this.progress = 0.0, // default 0 %
    this.borderColor, // fallback v widgetu
    this.fillColor, // fallback v widgetu
  });

  final double? width;
  final double? height;
  final double progress;
  final Color? borderColor;
  final Color? fillColor;

  @override
  State<PiggyBankFill> createState() => _PiggyBankFillState();
}

class _PiggyBankFillState extends State<PiggyBankFill> {
  @override
  Widget build(BuildContext context) {
    // Barve z varnostnim fallbackom
    final borderColor = widget.borderColor ?? Colors.grey.shade800;
    final fillColor = widget.fillColor ?? Colors.amber.shade400;

    // Prepreči crash: progress naj bo med 0 in 1
    final progress = widget.progress.clamp(0.0, 1.0);

    return Container(
      width: widget.width ?? 120,
      height: widget.height ?? 120,
      child: AspectRatio(
        aspectRatio: 1, // kvadratni šparovček
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // 1️⃣ Silhueta posodice
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 3),
                borderRadius: BorderRadius.circular(18),
              ),
            ),

            // 2️⃣ Polnilo od spodaj navzgor
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FractionallySizedBox(
                heightFactor: progress,
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: fillColor,
                ),
              ),
            ),

            // 3️⃣ Tekst % na sredini
            Positioned.fill(
              child: Center(
                child: Text(
                  "${(progress * 100).toStringAsFixed(0)}%",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
