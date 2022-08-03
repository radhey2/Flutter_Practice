import 'package:flutter/material.dart';

import '../divider/divider.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      color: Colors.red[50],
      child: Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              margin: const EdgeInsets.symmetric(horizontal: 256.0),
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const MyDivider(label: 'CONTACT'),
                    const Spacer(),
                    const Center(
                      child: Text(
                        "GET IN TOUCH",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                        'Do you want to know more about me or my work? \n Or do you have a cool project that you want me to dive into? \n Send me an email or give me a call!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 1.0,
                        )),
                    const SizedBox(height: 28),
                    RichText(
                      text: const TextSpan(
                        text: 'T',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: '+ 31 6 53 61 04 42',
                              style: TextStyle(fontWeight: FontWeight.normal))
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'E ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: 'mail@helenbouman.com',
                              style: TextStyle(fontWeight: FontWeight.normal))
                        ],
                      ),
                    ),
                  ]))),
    );
  }
}
