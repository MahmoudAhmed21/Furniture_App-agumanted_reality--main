import 'package:flutter/material.dart';
import 'package:flutter_application_1/Blog.dart';
import 'package:flutter_application_1/Categories.dart';
import 'package:flutter_application_1/ItemDetails.dart';
import 'package:flutter_application_1/MainApp.dart';
import 'package:flutter_application_1/contactUs.dart';
import 'package:flutter_application_1/pages/ConfirmPayment%20copy.dart';
import 'package:flutter_application_1/pages/PaymentData.dart';
import 'package:flutter_application_1/pages/PaymentMethod%20copy.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/Aboutus.dart';
import 'package:flutter_application_1/Finduremail.dart';
import 'package:flutter_application_1/checkemail.dart';
import 'package:flutter_application_1/creation.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/favourites.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


 Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/Welcome",
        routes: {
          "/MainApp": (context) => const Main(),
          "/PaymentConfirmation": (context) => const PaymentConfirmation(),
          "/PaymentMethod": (context) => const PaymentMethod(),
          "/PaymentData": (context) => const PaymentData(),
          "/Welcome": (context) => const Welcome(),
          "/Login": (context) => const Login(),
          "/signup": (context) => const Signup(),
          "/welcome": (context) => const Welcome(),
          "/Finduremail": (context) => const Finduremail(),
          "/checkemail": (context) => const checkemail(),
          "/creation": (context) => const Creation(),
          "/Home": (context) => const Home(),
          "/Profile": (context) => const AbadyApp(),
          "/cart": (context) => const Cart(),
          "/favourites": (context) => const Kanbti(),
          "/Aboutus": (context) => const Aboutus(),
          "/Blog": (context) => const Blog(),
          "/Categories": (context) => const Categories(),
          "/contactUs": (context) => const contactUs(),
          "/ItemDetails": (context) => const ItemDetails(),
        });
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
