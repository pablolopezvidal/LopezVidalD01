import 'package:flutter/material.dart';
import 'dart:convert'; 
import 'package:flutter/services.dart'; 
import '../widgets/widget1.dart';

class WidgetsPage extends StatefulWidget {
  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  List<dynamic> widgets = [];

  Future<void> loadJsonData() async {
    String data = await rootBundle.loadString('assets/widgets.json');
    
    setState(() {
      widgets = jsonDecode(data)['widgets'];
    });
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyWidget(),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterLogo(size: 50),
                      SizedBox(height: 10),
                      Text(widgets[index]['nombre']),
                      SizedBox(height: 5),
                      Text(widgets[index]['descripcion']),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
