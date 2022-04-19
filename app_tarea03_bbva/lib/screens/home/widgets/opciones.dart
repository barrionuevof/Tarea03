import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Opciones extends StatelessWidget {
  const Opciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List getColores = [
      AppTheme.kOportunidades,
      AppTheme.kTransferir,
      AppTheme.kRetiro,
      AppTheme.kPagar,
    ];
    List getOpciones = [
      "Oportunidades",
      "Transferir",
      "Retiro sin tarjeta",
      "Pagar servicio"
    ];
    List getIconos = [
      Icons.add,
      Icons.transform_rounded,
      Icons.attach_money,
      Icons.settings,
    ];
//Icons.add, Icons.transform_rounded, Icons.monetization_on_outlined, Icons.settings
    return Container(
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
    );
  }
}
