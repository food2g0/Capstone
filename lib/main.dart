
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodtogo_customer/assistantMethods/cart_item_counter.dart';
import 'package:foodtogo_customer/splashScreen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'assistantMethods/total_ammount.dart';
import 'global/global.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c)=> CartItemCounter()),
        ChangeNotifierProvider(create: (c)=> TotalAmount()),
      ],
      child: const GetMaterialApp( // Wrap your app with GetMaterialApp
        title: 'Food To Go',
        debugShowCheckedModeBanner: false,
        home: MySplashScreen(),
      ),
    );
  }
}