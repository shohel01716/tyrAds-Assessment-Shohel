import 'package:advertiser/advertiser.dart';

class AppTextStyles {
  AppTextStyles._();

  ///Font Size 24. Font Weight Bold.
  static TextStyle get title1 {
    return TextStyle(
        fontSize: 24.sp,
        fontFamily: AppFonts.poppinsBold,
        color: AppColors.blue,
        fontWeight: FontWeight.bold);
  }

  ///Font Size 18. Font Weight Bold.
  static TextStyle get title2 => title1.copyWith(fontSize: 18.sp);

  ///Font Size 16. Font Weight Bold.
  static TextStyle get title3 => title1.copyWith(fontSize: 16.sp);

  ///Font Size 18. Font Weight Medium.
  static TextStyle get headline1 {
    return TextStyle(
      fontSize: 18.sp,
      fontFamily: AppFonts.poppinsMedium,
      color: AppColors.blue,
    );
  }

  ///Font Size 16. Font Weight Medium.
  static TextStyle get headline2 => headline1.copyWith(fontSize: 16.sp);

  ///Font Size 14. Font Weight Medium.
  static TextStyle get headline3 => headline1.copyWith(fontSize: 14.sp);

  ///Font Size 16. Font Weight Regular.
  static TextStyle get paragraph1 {
    return TextStyle(
        fontSize: 16.sp,
        fontFamily: AppFonts.poppinsRegular,
        color: AppColors.blue,
        fontWeight: FontWeight.normal);
  }

  ///Font Size 14. Font Weight Regular.
  static TextStyle get paragraph2 => paragraph1.copyWith(fontSize: 14.sp);

  ///Font Size 12. Font Weight Regular.
  static TextStyle get paragraph3 => paragraph1.copyWith(fontSize: 12.sp);
}
