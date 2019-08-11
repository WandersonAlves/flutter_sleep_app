import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/views/Home.dart';
import 'package:flutter_sleep_app/widgets/AppIcon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentSelectedNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
        title: 'Sleep Well',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Open Sans'
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          bottomNavigationBar: Container(
              color: AppColors.foregroundColor,
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(
                        isSelected: this.currentSelectedNavigationIndex == 0,
                        icon: Icons.home,
                        onTap: () {
                          this._setNavigationIndex(0);
                        }),
                    AppIcon(
                        isSelected: this.currentSelectedNavigationIndex == 1,
                        icon: Icons.graphic_eq,
                        onTap: () {
                          this._setNavigationIndex(1);
                        }),
                    AppIcon(
                        isSelected: this.currentSelectedNavigationIndex == 2,
                        icon: Icons.person,
                        onTap: () {
                          this._setNavigationIndex(2);
                        }),
                  ],
                ),
              )),
          body: Home()
        ));
  }

  void _setNavigationIndex(int index) {
    setState(() {
      this.currentSelectedNavigationIndex = index;
    });
  }
}
