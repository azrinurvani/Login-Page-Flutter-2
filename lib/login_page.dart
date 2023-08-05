import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image Logo
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: SizedBox(
                height: 100,
                width: screenSize.width,
                child: const Image(
                  image: AssetImage("images/ic_strack.webp"),
                ),
              ),
            ),
            //Strack Title
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  left: 24,
                  right: 24,
                ),
                child: Text(
                  "S'Track for IOS",
                  style: TextStyle(
                    fontSize: 34,
                    color: Color(0xFF305F72),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //Text Masuk
            const Padding(
              padding: EdgeInsets.only(
                top: 42,
                left: 16,
                right: 16,
              ),
              child: Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF4C4C4C),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            //Text Selamat Datang
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
              ),
              child: Text(
                "Halo, Selamat datang kembali",
                style: TextStyle(fontSize: 18, color: Color(0xFF4C4C4C)),
              ),
            ),
            //Edit Text Phone Number
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 4,
                right: 4,
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(12, 12, 12, 4),
                height: 80,
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 14),
                  maxLines: 1,
                  maxLength: 17,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ], //input numbers only
                  decoration: const InputDecoration(
                    labelText: "Nomor Telepon",
                    hintText: "Contoh : 08123456789",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
            ),
            //Text warning input nomor telepon
            const Padding(
              padding: EdgeInsets.only(top: 2, left: 16, right: 16),
              child: Text(
                "Pastikan nomor kamu terhubung dengan WhatsApp",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //Checkbox kebijakan privacy dan policy
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 2, right: 8),
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                title: Transform.translate(
                  offset: const Offset(-20, 0),
                  child: RichText(
                    text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        children: [
                          const TextSpan(
                              text: 'Saya setuju dengan ',
                              style: TextStyle(
                                color: Colors.black,
                              )),
                          TextSpan(
                            text: 'kebijakan dan privacy',
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Kebijakan dan privacy');
                              },
                          ),
                          const TextSpan(
                            text: ' Strack',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ),
            //Button Login
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF305F72),
                ),
                child: SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 180),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "S'Track IOS Versi 0.0.0.1",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF305F72),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
