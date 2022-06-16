import 'package:flutter/material.dart';
import 'package:weatherflut/ui/common/debouncer.dart';
import 'package:weatherflut/ui/common/header_widget.dart';

class AddCitiesPage extends StatefulWidget {
  const AddCitiesPage({Key? key}) : super(key: key);

  @override
  State<AddCitiesPage> createState() => _AddCitiesPageState();
}

class _AddCitiesPageState extends State<AddCitiesPage> {
  final debouncer = Debouncer();

  void onChangedText(String text) {
    debouncer.run(
      () {
        print('text: $text');
      },
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
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWidget(
              title: "Agregar ciudad",
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: TextField(
                onChanged: onChangedText,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  hintText: "Buscar ciudad",
                  fillColor: Colors.grey[200],
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
