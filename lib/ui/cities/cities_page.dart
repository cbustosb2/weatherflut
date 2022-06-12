import 'package:flutter/material.dart';
import 'package:weatherflut/ui/common/header_widget.dart';
import 'package:weatherflut/ui/ui_constant.dart';

import 'add/add_city_page.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  void _handleNavigatePress(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const AddCitiesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () => _handleNavigatePress(context),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderWidget(
              title: "Mis Ciudades",
            ),
            Expanded(
              child: Center(
                child: Text("No tienes ciudades :("),
              ),
            )
          ],
        ),
      ),
    );
  }
}
