import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:knotionapp/providers/serie_provider.dart';
import 'package:knotionapp/views/views.dart';
import 'package:provider/provider.dart';
import 'package:knotionapp/providers/serie_provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SerieProvider(), lazy: false),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Series',
      initialRoute: "home",
      routes: {
        'home': (_) => HomeView(),
        'details': (_) => DetailsView(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Colors.indigo),
      ),
    );
  }
}
