import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojatax/screens/Authentications/login/loginScreen.dart';
import 'package:mojatax/screens/home_page.dart';
import 'package:mojatax/screens/main_page.dart';
import 'package:mojatax/widgets/tabBar_widget.dart';

import 'details/my_details.dart';
import 'screens/Authentications/registration/registration_page.dart';
import 'screens/SalesSection/payments.dart';
import 'screens/payments/bill_screen.dart';
import 'screens/tabs/dashboardTab.dart';
import 'zreport/z_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Moja Tax',
        theme: ThemeData(
            textTheme:
                GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: const ZReport(),
      ),
    );
  }
}
