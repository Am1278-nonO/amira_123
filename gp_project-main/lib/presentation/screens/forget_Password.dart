import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/screens/follow_order.dart';
import 'package:recycling_app/presentation/shared/Input_decoration.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/logo.dart';
import 'package:recycling_app/presentation/shared/snakbar.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetState();
}

class _forgetState extends State<forgetPassword> {
  final emailcontroler = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  forgetpassword() async {
    setState(() {
      isLoading = true;
    });
    Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return Follow_order();
                            }));
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    emailcontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 150,
        ),
        logo(),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Enter your email to reset password",
                    style: TextStyle(fontSize: 22)),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                    validator: (email) {
                      return email!.contains(RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                          ? null
                          : "Enter availd email";
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailcontroler,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Enter Your Email : ",
                        suffixIcon: const Icon(Icons.email))),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await forgetpassword();
                    } else {
                      showSnackBar(context, "Error..");
                    }
                  },
                  child: isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "forget password",
                          style: TextStyle(fontSize: 19),
                        ),
                  style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff0E7442)),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15))
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
