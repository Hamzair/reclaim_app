import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reclaim_app/view/profile_screen/components/privacy_policy.dart';
import 'package:reclaim_app/view/splash/splash_sceen.dart';
import 'package:reclaim_app/view/wallet/wallet.dart';
import 'helper/bindings.dart';
import 'view/home_screen/home_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // FirebaseFirestore.instance.settings = const Settings(
  //     persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  // Stripe.publishableKey =
  //     'pk_test_51PF3XJBD4iwEMWA71oP6QcS34JmsEtg5YpV8xaQU00Yp0PDChH3mgoIbOx4HTt6MPQHcEy6T6Vcf43Mjiz5XReRi00HEGgYPzh';
  // await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            initialBinding: UserBinding(),
          );
        });
  }
}
