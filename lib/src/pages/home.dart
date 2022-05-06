import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';

class HomePage extends StatelessWidget {
  TextStyle styles = const TextStyle(
      fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: ((ctx, appdata, child) => Scaffold(
            appBar: CustomAppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Bem vindo(a) ao ',
                      style: styles,
                    ),
                  ),
                  Image.asset(
                    'lib/assets/flutter1_devstravel_logo.png',
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Seu guia de viagem perfeito ',
                      style: styles,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
