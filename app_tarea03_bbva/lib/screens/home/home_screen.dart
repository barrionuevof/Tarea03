import 'package:app_tarea03_bbva/screens/home/widgets/bottom_navigator_app.dart';
import 'package:app_tarea03_bbva/screens/home/widgets/opciones.dart';
import 'package:app_tarea03_bbva/screens/home/widgets/tus_cuentas.dart';
import 'package:app_tarea03_bbva/screens/home/widgets/tus_tarjetas.dart';
import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppTheme.kBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.kPrimaryColor,
        elevation: 0.0,
        title: const Text(
          "Hola, Mauricio",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70.0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            "assets/icons/icon_open_menu_blanco.png",
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
                  color: AppTheme.kPrimaryColor,
                ),
                Container(
                  width: double.infinity,
                  height: 100.0,
                  color: AppTheme.kBackground,
                ),
                const SizedBox(height: 20),
                const Opciones(),
                const SizedBox(height: 20),
                const TusTarjetas(),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: TusCuentas(),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigatorApp(),
    );
  }
}
