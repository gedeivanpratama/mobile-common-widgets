import 'package:examples/pages/dialog_page.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Common Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE4007E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 17,
            height: 17 / 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Mobile Common Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.network(
                "https://assets.jobseeker.software/uploads/employer/logo/2023-03/dot-company-logo.png",
              ),
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DialogPage(),
                    ),
                  );
                },
                text: "Dialog",
              ),
              CustomButton(
                onPressed: () {},
                text: "Modal Bottom Sheet",
              ),
              CustomButton(
                onPressed: () {},
                text: "Text Form Fields",
              ),
              CustomButton(
                onPressed: () {},
                text: "List Tile",
              ),
              CustomButton(
                onPressed: () {},
                text: "Carousel Slider",
              ),
              CustomButton(
                onPressed: () {},
                text: "Card Large",
              ),
              CustomButton(
                onPressed: () {},
                text: "Card",
              ),
              CustomButton(
                onPressed: () {},
                text: "Others",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
