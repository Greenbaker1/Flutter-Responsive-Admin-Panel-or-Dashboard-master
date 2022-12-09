import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import '../dashboard/components/header.dart';
import '../dashboard/dashboard_screen.dart';


class OverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(title: "General Data"),
            SizedBox(height: defaultPadding,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormattedText(boldText: "Company Name:", text: "blabalba",),
                FormattedText(boldText: "Location:", text: "<insert location>",),
                FormattedText(boldText: "Company Code:", text: "<insert company code>",)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FormattedText extends StatelessWidget {
  const FormattedText({
    Key? key,
    required this.boldText,
    required this.text,
  }) : super(key: key);

  final String boldText, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding*0.5),
      child: Row(
        children: [
          Text(
            this.boldText,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(width: 20,),
          Text(
            this.text,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ]
      ),
    );
  }
}