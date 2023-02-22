import 'package:avocado/screens/otp_verfication.dart';
import 'package:avocado/utils/colors.dart';
import 'package:avocado/widgets/custome_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Add your phone number. We'll send you a verification code",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) => setState(() {
                    phoneController.text = value;
                  }),
                  cursorColor: kAccentColor,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.grey.shade600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: CountryListThemeData(
                                inputDecoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.black12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.black12),
                                  ),
                                ),
                                bottomSheetHeight: 550,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  selectedCountry = value;
                                });
                              });
                        },
                        child: Text(
                          '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length == 10
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null,
                  ),
                ),

                // TextFormField(
                //   cursorColor: Colors.purple,
                //   controller: phoneController,
                //   style: const TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //   ),
                //   onChanged: (value) {
                //     setState(() {
                //       phoneController.text = value;
                //     });
                //   },
                //   decoration: InputDecoration(

                //     prefixIcon: Container(
                //       padding: const EdgeInsets.all(8.0),
                //       child: InkWell(
                //         onTap: () {
                //           showCountryPicker(
                //               context: context,
                //               countryListTheme: const CountryListThemeData(
                //                 bottomSheetHeight: 550,
                //               ),
                //               onSelect: (value) {
                //                 setState(() {
                //                   selectedCountry = value;
                //                 });
                //               });
                //         },
                //         child: Text(
                //           "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                //           style: const TextStyle(
                //             fontSize: 18,
                //             color: Colors.black,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //     ),
                //     suffixIcon: phoneController.text.length > 9
                //         ? Container(
                //             height: 30,
                //             width: 30,
                //             margin: const EdgeInsets.all(10.0),
                //             decoration: const BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: Colors.green,
                //             ),
                //             child: const Icon(
                //               Icons.done,
                //               color: Colors.white,
                //               size: 20,
                //             ),
                //           )
                //         : null,
                //   ),
                // ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: AvocadoButton(
                      text: "Login",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}