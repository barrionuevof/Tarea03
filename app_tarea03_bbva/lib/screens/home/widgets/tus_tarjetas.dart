import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TusTarjetas extends StatelessWidget {
  const TusTarjetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.0,
      color: AppTheme.kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 15),
            child: Text(
              "Tus tarjetas",
              style: TextStyle(
                color: AppTheme.kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppTheme.kSecondaryColor,
                  Color.fromRGBO(246, 246, 246, 1.0),
                ],
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  children: [
                    //SizedBox(height: 10),
                    Container(
                      width: 226,
                      height: 132,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/bbva_blanco.png",
                            scale: 3.0,
                          ),
                          Image.asset(
                            "assets/icons/chip_horizontal.png",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "*62396",
                                style:
                                    TextStyle(color: AppTheme.kSecondaryColor),
                              ),
                              Image.asset(
                                "assets/icons/visa1.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.credit_card,
                          color: AppTheme.kPrimaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Tarjeta Digital",
                          style: TextStyle(
                            color: AppTheme.kPrimaryColor,
                            fontSize: 11.0,
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Text(
                          "Desactivar",
                          style: TextStyle(
                            color: AppTheme.kPrimaryColor,
                            fontSize: 11.0,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.offline_pin_outlined,
                          color: AppTheme.kPrimaryColor,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  width: 132,
                  height: 199,
                  decoration: BoxDecoration(
                    color: AppTheme.kSecondaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          "assets/icons/visa2.png",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/bbva_azul_vertical.png",
                          ),
                          Image.asset(
                            "assets/icons/chip_vertical.png",
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: const TextSpan(
                                text: "*62396",
                                style: TextStyle(color: AppTheme.kPrimaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
