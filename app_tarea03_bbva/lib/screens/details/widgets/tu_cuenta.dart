import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TuCuenta extends StatelessWidget {
  const TuCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 0.0,
      ),
      decoration: BoxDecoration(
        color: AppTheme.kPrimaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/bbva_blanco.png",
                scale: 2.0,
              ),
              const Icon(
                Icons.more_horiz,
                color: AppTheme.kSecondaryColor,
              ),
            ],
          ),
          const Text(
            "20,000.00",
            style: TextStyle(
              color: AppTheme.kSecondaryColor,
              fontSize: 35.0,
            ),
          ),
          const Text(
            "Saldo disponible",
            style: TextStyle(
              color: AppTheme.kSecondaryColor,
              fontSize: 10.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "001ah7297",
                style: TextStyle(
                  color: AppTheme.kSecondaryColor,
                ),
              ),
              Image.asset("assets/icons/visa1.png")
            ],
          ),
        ],
      ),
    );
  }
}
