import 'package:flutter/material.dart';
import 'package:weatherflut/ui/common/header_widget.dart';
import '../ui_constant.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: maxPageWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              HeaderWidget(
                title: "Mis Ciuidades",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
