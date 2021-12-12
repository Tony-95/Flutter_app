import 'package:flutter/material.dart';
import 'package:yuka/resources/resources.dart';
import 'package:yuka/widgets/appbar.dart';
import 'package:yuka/widgets/button.dart';
import 'color.dart';
import 'list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor:AppColors.accent,
          primaryColor: AppColors.primary,
          primaryColorDark: AppColors.primary_dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OFFAppBar(
        title: 'Mes produits',
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(Images.icEmptyList),
            SizedBox(height: 50.0),
            Text(
              "Vous n'avez encore rien scanné !\n",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Cliquez sur le bouton ci-dessous pour commencer'),
            SizedBox(height: 50.0),
            OFFButton(
              text: 'SCANNER UN PRODUIT',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsListScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
