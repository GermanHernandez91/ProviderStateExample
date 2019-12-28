import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/providers/todos_model.dart';
import 'package:todoapp_provider/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TodosModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
