import 'package:app_tarea03_bbva/screens/home/home_screen.dart';
import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kSecondaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/icons/icon_open_menu_azul.png"),
                  Image.asset("assets/icons/bbva_azul.png"),
                  const SizedBox(width: 10)
                ],
              ),
              const SizedBox(height: 30),
              Container(
                //color: Colors.red,
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        "https://i.pinimg.com/474x/6c/92/b8/6c92b88643bc75a5b5fa3003fe7d2733.jpg",
                      ),
                    ),
                    const SizedBox(width: 20),
                    // CircleAvatar(
                    //   radius: 15.0,
                    //   backgroundImage: NetworkImage(
                    //     "https://i.pinimg.com/474x/6c/92/b8/6c92b88643bc75a5b5fa3003fe7d2733.jpg",
                    //   ),
                    // ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset("assets/icons/transferir.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Hola, Mauricio",
                style: TextStyle(
                  color: AppTheme.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "¿Que tal tu día hoy?",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              const SizedBox(height: 45),
              _textPassword(),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 100.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.kPrimaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Text(
                    "Iniciar Sesión",
                    style: TextStyle(color: AppTheme.kSecondaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 30.0,
                //color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "Olvidé mi contraseña",
                  style: TextStyle(
                    color: AppTheme.kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Image.asset("assets/icons/surface.png"),
                  const SizedBox(width: 20),
                  const Text(
                    "Token móvil",
                    style: TextStyle(
                      color: AppTheme.kPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Image.asset("assets/icons/qr-code.png"),
                  const SizedBox(width: 20),
                  const Text(
                    "Operación \nQR + CoDi",
                    style: TextStyle(
                      color: AppTheme.kPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Image.asset("assets/icons/phone-call.png"),
                  const SizedBox(width: 20),
                  const Text(
                    "Línea BBVA",
                    style: TextStyle(
                      color: AppTheme.kPrimaryColor,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textPassword() {
    return const TextField(
      obscureText: true,
      cursorColor: AppTheme.kPrimaryColor,
      style: TextStyle(color: AppTheme.kPrimaryColor),
      decoration: InputDecoration(
        labelText: "Contraseña",
        hintText: "Ingrese su contraseña",
        suffixIcon: Icon(
          Icons.remove_red_eye_outlined,
          color: AppTheme.kPrimaryColor,
        ),
        labelStyle: TextStyle(color: AppTheme.kPrimaryColor),
        hintStyle: TextStyle(color: AppTheme.kPrimaryColor),
      ),
    );
  }
}
