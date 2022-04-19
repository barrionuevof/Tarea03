import 'dart:ui';

import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TusCuentas extends StatelessWidget {
  const TusCuentas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> getCuentas = ["001ah7297", "001ah7246", "001ah7277"];
    List<String> getCodigos = ["*37265", "*36264", "*62396"];
    List<String> getSaldos = ["20,000", "158,000", "77,000"];
    return Container(
      width: double.infinity,
      height: 200.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 0.0,
      ),
      decoration: BoxDecoration(
        color: AppTheme.kSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "TUS CUENTAS",
                style: TextStyle(
                  color: AppTheme.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),

          // Container(
          //   width: double.infinity,
          //   height: 140,
          //   color: Colors.red,
          //   child: ListView(
          //     children: const [
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 1"),
          //       Text("Hola 2"),
          //       Text("Hola 2"),
          //       Text("Hola 2"),
          //     ],
          //   ),
          // ),

          // Container(
          //   width: double.infinity,
          //   height: 140,
          //   color: Colors.red,
          //   child: ListView.builder(
          //       itemCount: 20,
          //       itemBuilder: (context, index) {
          //         return const Text("Hola");
          //       }),
          // ),

          Expanded(
            child: ListView.builder(
                itemCount: getCuentas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      getCuentas[index],
                      style: TextStyle(color: Colors.blue[600]),
                    ),
                    subtitle: Text(getCodigos[index]),
                    trailing: SizedBox(
                      width: 180.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            getSaldos[index],
                            style: const TextStyle(
                              color: AppTheme.kPrimaryColor,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
