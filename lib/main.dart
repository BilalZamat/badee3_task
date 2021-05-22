import 'package:provider/provider.dart';

import './models/post-provider.dart';
import 'package:flutter/material.dart';
import 'screens/post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (cxt) => PostProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: PostScreen(),
      ),
    );
  }
}
