import 'package:about_me_app/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 151, 143, 0.8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  "Who AM I?",
                  style: TextStyle(
                      fontFamily: "BebasNeue",
                      fontSize: 75,
                      color: Color.fromRGBO(233, 218, 193, 1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CircleAvatar(
                  radius: 95,
                  backgroundImage: AssetImage("images/personal.JPG"),
                  backgroundColor: Colors.teal,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 31,
                      color: Color.fromRGBO(247, 236, 222, 1),
                      fontFamily: "CharisSILBold"),
                ),
                const SizedBox(
                  height: 0,
                ),
                Text(
                  field,
                  style: const TextStyle(
                      fontSize: 29,
                      color: Color.fromRGBO(247, 236, 222, 1),
                      fontFamily: "GentiumPlusit"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: Text(
                    describeText,
                    textAlign: TextAlign.justify,
                    //"Sepehr Shakibi is an electrical engineer and microcontroller programmer. With programming and IAR development environments, he programs AVR and ARM ST microcontrollers and designs the board with Altium Designer. He is interested in microcontroller programming and high-level languages. He programs in C, Python, Java, kotlin, and Darts. In addition to microcontroller programming, it develops Android platform application in Kotlin and Dart. ",
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: "CharisSIL",
                        color: Colors.white),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(45, 0, 45, 17),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      color: Colors.teal.shade700,
                      size: 34,
                    ),
                    title: Text(
                      email,
                      style: const TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                          fontFamily: "CharisSIL"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
