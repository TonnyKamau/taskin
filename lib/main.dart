import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskin/screens/screens.dart';
import 'package:taskin/services/change_theme_button_widget.dart';

import 'package:taskin/services/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            themeMode: themeProvider.themeMode,
            debugShowCheckedModeBanner: false,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: Scaffold(
              
              body: NavScreen(),
             
            ),
          );
        },
      );
}
