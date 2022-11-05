import 'package:advertiser/advertiser.dart';
import 'package:get/get.dart';

import 'views/screens/home/home_screen.dart';

void main() {
  runApp(const Advertiser());
}

class Advertiser extends StatelessWidget {
  const Advertiser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, widget) {
        return GetMaterialApp(
          title: 'Advertiser',
          debugShowCheckedModeBanner: false,
          navigatorKey: AppKey.navigation,
          theme: ThemeData(
              // ignore: deprecated_member_use
              androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: AppColors.blue,
                selectionColor: AppColors.blue.withOpacity(0.6),
                selectionHandleColor: AppColors.blue.withOpacity(0.8),
              ),
              primaryColor: AppColors.blue),
          home: widget,
        );
      },
      child: const HomeScreen(),
    );
  }
}
