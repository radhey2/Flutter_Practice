import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.73,
      color: Colors.teal[200],
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              margin: const EdgeInsets.symmetric(horizontal: 256.0),
              child: SizedBox(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'h',
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                          decorationThickness: 0.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "hi, I'm Helen. I create",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 20.0),
                      primary: Colors.black,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(width: 2.5)),
                      textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1),
                    ),
                    child: const Text('MEER OVER MIJ'),
                  )
                ],
              )),
            ),
          ),
          Align(
            alignment: const Alignment(0.7, 1),
            child: kIsWeb
                ? Image.network('assets/images/profile.png')
                : Image.asset(
                    'assets/images/profile.png',
                    height: 360,
                  ),
          )
        ],
      ),
    );
  }
}
