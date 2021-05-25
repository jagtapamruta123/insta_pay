import 'package:flutter/material.dart';
import 'package:instapayflutter/pages/persistant_nav_bar.dart';
import 'package:instapayflutter/widgets/custom_text_widget.dart';

import '../app_drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        elevation: 0.0,
        centerTitle: true,
        title: CustomTextWidget(
          title: 'Home',
          fontSize: 25,
          letterSpecing: 1,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        // title: Text(''),
      ),
      body: ProvidedStylesExample(),
    );
  }
}
