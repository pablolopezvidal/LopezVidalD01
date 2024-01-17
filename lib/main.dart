import 'package:flutter/material.dart';
import 'widgets/widget1.dart';
import 'widgets/widget2.dart';
import 'widgets/widget3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'paginas/about.dart';
import 'paginas/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutPage(),
        '/widgets': (context) => WidgetsPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    MyWidget(),
                    SizedBox(height: 150),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyWidget2(),
                        SizedBox(width: 100),
                        MyWidget3(),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [MyWidget4()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
