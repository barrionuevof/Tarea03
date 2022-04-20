import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Detalletarjeta extends StatelessWidget {
  const Detalletarjeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List getColores = [
      AppTheme.kPagar2,
      AppTheme.kTransferir,
      AppTheme.kRetiro,
      AppTheme.kMas,
    ];
    List getOpciones = [
      "Pagar servicio",
      "Transferir",
      "Retiro sin tarjeta",
      "6 más"
    ];
    List getIconos = [
      Icons.home_repair_service_outlined,
      Icons.transform_rounded,
      Icons.attach_money,
      Icons.settings,
    ];

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40.0,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 0.0),
          alignment: Alignment.bottomCenter,
          color: AppTheme.kSecondaryColor,
          child: Row(
            children: const [
              Icon(
                Icons.credit_card,
                color: AppTheme.kPrimaryColor,
                size: 15,
              ),
              Text(
                "Detalle de tarjeta",
                style: TextStyle(
                  color: AppTheme.kPrimaryColor,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                width: 100.0,
              ),
              Text(
                "Apagar tarjeta",
                style: TextStyle(
                  color: AppTheme.kPrimaryColor,
                  fontSize: 12.0,
                ),
              ),
              Icon(
                Icons.offline_pin_outlined,
                color: AppTheme.kPrimaryColor,
                size: 15,
              ),
            ],
          ),
        ),
        //ojo
        Container(
          width: double.infinity,
          height: 140.0,
          color: AppTheme.kSecondaryColor,
          alignment: Alignment.center,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 10.0,
            ),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.0,
                        height: 75.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: getColores[index],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Icon(
                          getIconos[index],
                          color: AppTheme.kSecondaryColor,
                          size: 35.0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        getOpciones[index],
                        style: const TextStyle(
                          color: AppTheme.kPrimaryColor,
                          fontSize: 11.0,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 30),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
