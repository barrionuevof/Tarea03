import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class UltimosMovimientos extends StatelessWidget {
  const UltimosMovimientos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> getCuentas = [
      "Su pago en efectivo",
      "Spei enviado azteca",
      "Su pago en efectivo"
    ];
    List<String> getCodigos = [
      "Movimiento BBVA",
      "Transferencia interbancaria",
      "Movimiento BBVA"
    ];
    List<String> getSaldos = ["+ 1,600.00", "- 1,600.00", "1,600.00"];
    List getColores = [Colors.green, Colors.red, Colors.blueGrey];

    return Container(
      width: double.infinity,
      height: 270.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 0.0,
      ),
      decoration: BoxDecoration(
        color: AppTheme.kSecondaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "ÚLTIMOS MOVIMIENTOS",
                style: TextStyle(
                  color: AppTheme.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.black38,
              ),
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
                      style: const TextStyle(color: AppTheme.kPrimaryColor),
                    ),
                    subtitle: Text(
                      getCodigos[index],
                      style: const TextStyle(fontSize: 10),
                    ),
                    trailing: SizedBox(
                      width: 180.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            getSaldos[index],
                            style: TextStyle(
                              color: getColores[index],
                              fontSize: 18.0,
                            ),
                          ),
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
