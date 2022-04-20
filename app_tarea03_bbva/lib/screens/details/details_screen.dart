import 'package:app_tarea03_bbva/screens/details/widgets/detalle_tarjeta.dart';
import 'package:app_tarea03_bbva/screens/details/widgets/tu_cuenta.dart';
import 'package:app_tarea03_bbva/screens/details/widgets/ultimos_movimientos.dart';
import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppTheme.kBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.kSecondaryColor,
        elevation: 0.0,
        title: const Text(
          "Cuenta *37265",
          style: TextStyle(
            color: AppTheme.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70.0,
        leading: const Padding(
          padding: EdgeInsets.all(13.0),
          child: Icon(
            Icons.arrow_back,
            color: AppTheme.kPrimaryColor,
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/474x/6c/92/b8/6c92b88643bc75a5b5fa3003fe7d2733.jpg",
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppTheme.kBackground, //
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100.0,
                  color: AppTheme.kSecondaryColor,
                ),
                Container(
                  width: double.infinity,
                  height: 100.0,
                  color: AppTheme.kBackground,
                ),
                const SizedBox(height: 20),
                const Detalletarjeta(),
                const SizedBox(height: 20),
                const UltimosMovimientos(),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: TuCuenta(),
          )
        ],
      ),
      //bottomNavigationBar: const BottomNavigatorApp(),
    );
  }
}
