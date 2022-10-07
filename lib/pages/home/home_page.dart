import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:musapp/pages/home/bodyhome.dart';
import '../settings/settings_page.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int activeMenu1 = 0;

  get primary => Colors.green;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      appBar: getAppBar(context),
      body: const bodypage(),
    );
  }
}

getAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Text(
          'Good Afternoon',
          style: TextStyle(
              fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const Padding(padding: EdgeInsets.only(left: 35)),
        IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.bell)),
        IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.clock)),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const settingsPage()),
              );
            },
            icon: const Icon(FeatherIcons.settings)),
      ]),
    ),
  );
}
