// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _currentPressedIndex = -1; // Initial value indicates no button is pressed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 428,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bienvenue !',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 48,
                                      fontFamily: 'Sulphur Point',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Choisissez votre service de streaming pour continuer',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF3D3D3D),
                                      fontSize: 24,
                                      fontFamily: 'Sulphur Point',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 60),
                            Column(
                              children: [
                                loginButton(0, "Spotify", FontAwesomeIcons.spotify),
                                const SizedBox(height: 22),
                                loginButton(1, "Deezer", FontAwesomeIcons.deezer),
                                const SizedBox(height: 22),
                                loginButton(2, "Apple Music", FontAwesomeIcons.apple),
                                const SizedBox(height: 22),
                                loginButton(3, "YouTube Music", FontAwesomeIcons.youtube),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(int index, String serviceName, IconData iconData) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentPressedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: double.infinity,
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: _currentPressedIndex == index
              ? []
              : [
                  BoxShadow(
                    color: Color(0xFF000000),
                    blurRadius: 0,
                    offset: Offset(4, 4),
                    spreadRadius: 0,
                  ),
                ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Login with ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Sulphur Point',
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                FaIcon(iconData, size: 24),
                const SizedBox(width: 5),
                Text(
                  serviceName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sulphur Point',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}