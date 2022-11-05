import 'package:advertiser/advertiser.dart';

class AppAppBarStyles {
  AppAppBarStyles._();

  static AppBar get white => AppBar(
        toolbarHeight: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
          systemNavigationBarColor: AppColors.white,
          systemNavigationBarDividerColor: AppColors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
      );

}
