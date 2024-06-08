import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trogon_test/controller/controller.dart';
import 'package:trogon_test/view/my_course_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Controller>(
          create: (context) => Controller(),
        )
      ],
      child: MaterialApp(
        title: 'Trogon Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyCourseScreen(),
      ),
    );
  }
}
