import 'package:flutter/material.dart';
import 'package:portfolio/src/appbar/appbar.dart';
import 'package:portfolio/src/divider/divider.dart';
import 'package:portfolio/src/header/header.dart';
import 'package:portfolio/src/posts/posts.dart';

import 'contact_us/contact.dart';
import 'footer/footer.dart';

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            MyAppBar(title: 'RADHESHYAM'),
            Header(),
            MyDivider(label: 'PORTFOLIO'),
            Posts(),
            Contact(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
