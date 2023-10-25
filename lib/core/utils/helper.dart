// import 'dart:developer';
// import 'dart:io';
//
// import 'package:app_settings/app_settings.dart';
// import 'package:background_downloader/background_downloader.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:infyni_student/core/constants.dart';
// import 'package:infyni_student/core/theme/app_color.dart';
// import 'package:infyni_student/core/utils/assets.dart';
// import 'package:infyni_student/core/utils/shared_keys.dart';
// import 'package:infyni_student/core/utils/storage_utils.dart';
// import 'package:infyni_student/core/utils/strings.dart';
// import 'package:infyni_student/core/widgets/custom_accept_cancel_bottomsheet.dart';
// import 'package:infyni_student/data/model/live_course_model.dart';
// import 'package:infyni_student/data/model/locale_model.dart';
// import 'package:infyni_student/data/repo/landing_services.dart';
// import 'package:infyni_student/module/app/app_controller.dart';
// import 'package:infyni_student/module/home/view/bottom_navigation_screen.dart';
// import 'package:infyni_student/module/kids/landing_page/views/kids_landing_page.dart';
// import 'package:infyni_student/module/landing/view/landing_screen.dart';
// import 'package:infyni_student/module/live_where_by_sdk/where_by_session_room_screen.dart';
// import 'package:infyni_student/module/login/controller/login_controller.dart';
// import 'package:infyni_student/module/login/view/login_screen.dart';
// import 'package:infyni_student/module/login/view/sign_up_screen.dart';
// import 'package:infyni_student/module/welcome/view/choose_role_screen.dart';
// import 'package:intl/intl.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../module/landing/view/landing_drawer.dart';
//
// String? getScheduledDateAndTime(String? scheduledDate, String? scheduleTime) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   var dateObject = formatter.parse(scheduledDate);
//
//   final DateFormat formatter1 = DateFormat('MMM dd, yyyy');
//   final String formatted = formatter1.format(dateObject);
//
//   return "$formatted at ${scheduleTime ?? ""}";
// }
//
// String? getScheduledReadableDate(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat('MMM dd, yyyy');
//   final String formatted = formatter1.format(scheduledDate);
//
//   log("formatted : $formatted");
//
//   return formatted;
// }
//
// String? getReportReadableDate(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//   final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   final String formatted = formatter.format(scheduledDate);
//
//   log("formatted : $formatted");
//
//   return formatted;
// }
//
// String? getRangeReadableDate(DateTime startDate, DateTime endDate) {
//   if (startDate == null && endDate == null) {
//     return null;
//   }
//   final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   final String startDateFormat = formatter.format(startDate);
//   final String endDateFormat = formatter.format(endDate);
//   final String customRangeDate = '$startDateFormat\t-\t$endDateFormat';
//
//   log("customRangeDate : $customRangeDate");
//   return customRangeDate;
// }
//
// String? getDobReadableDate(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat('yyyy-MM-dd');
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
// String? getScheduledReadableDateToDateAndMonth(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat('MMM dd');
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
// String? getReadableSessionRecordingDate(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat(
//     'dd MMMM yyyy / hh:mm aa ',
//   );
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
//
// String? getReadableNotificationDate(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   final DateFormat formatter1 = DateFormat(
//     ' dd MMMM yyyy ',
//   );
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
// String? getReadableTime(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat(
//     'hh:mm aa',
//   );
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
// String? getScheduledReadableDateToDateAndMonthAndDay(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//
//   scheduledDate.toString();
//
//   // final DateFormat formatter = DateFormat('dd/MM/yyyy');
//   // var dateObject = formatter.parse(scheduledDate ?? "");
//
//   final DateFormat formatter1 = DateFormat('EEEE MMM dd');
//   final String formatted = formatter1.format(scheduledDate);
//
//   return formatted;
// }
//
// String? getSessionDate(String? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//   var time = DateTime.now();
//   final DateFormat formatter = DateFormat('EEEE, dd MMMM yyyy');
//   var dateObject = formatter.parse("$scheduledDate ${time.year}");
//
//   final DateFormat formatter1 = DateFormat('dd MMM, yyyy');
//   final String formatted = formatter1.format(dateObject);
//
//   return formatted;
// }
//
// String? getDateWithMonthText(DateTime? scheduledDate) {
//   if (scheduledDate == null) {
//     return null;
//   }
//   final DateFormat formatter = DateFormat('dd MMM y');
//   final String formatted = formatter.format(scheduledDate);
//
//   log("formatted : $formatted");
//
//   return formatted;
// }
//
// void logout() {
//   LoginController loginController = Get.put(LoginController());
//   loginController.logoutApi().then((value) {
//     StorageUtil.clearPreferences();
//     AppController appController = Get.put(AppController());
//     appController.isLoggedIn.value = false;
//
//     appController.getPermissionForLocation();
//     //getLocaleAndCurrencyDetails();
//   });
//
//   Get.offAll(() => ChooseRoleScreen());
// }
//
// Future<String> refreshAccessToken() {
//   LoginController loginController = Get.put(LoginController());
//   return loginController.refreshAccessToken();
// }
//
// String? getCurrencyFormatter({String? locale, int? number, String? symbol}) {
//   if (number == null) {
//     return null;
//   }
//   var price =
//       NumberFormat.currency(locale: locale, symbol: symbol, decimalDigits: 0)
//           .format(number);
//   return price;
// }
//
// String? getCurrencyCalculated({int? number}) {
//   if (number == null) {
//     return null;
//   }
//
//   if (number == 0) {
//     return "Free";
//   }
//
//   String currencyRate = StorageUtil.getString(SharedKeys.CURRENCY_RATE);
//   String currencySymbol = StorageUtil.getString(SharedKeys.CURRENCY_SYMBOL);
//   //String locale = StorageUtil.getString(SharedKeys.LOCALE);
//
//   double rateAgainstIndia = double.tryParse(currencyRate) ?? 0.0;
//
//   if (rateAgainstIndia == 0.0) {
//     rateAgainstIndia = 1.0;
//   }
//
//   double amount = (number.toDouble()) / rateAgainstIndia;
//
//   var price = NumberFormat.currency(
//           locale: "en_US",
//           symbol: currencySymbol,
//           decimalDigits: amount % 1 == 0 ? 0 : 2)
//       .format(amount);
//
//   return price;
// }
//
// String? gePaymentHistoryCurrencyCalculated(
//     {int? number, String? currencySymbol}) {
//   if (number == null) {
//     return null;
//   }
//
//   if (number == 0) {
//     return "Free";
//   }
//
//   String currencySymbol1 = StorageUtil.getString(SharedKeys.CURRENCY_SYMBOL);
//   log("currencySymbol $currencySymbol1");
//
//   var price = NumberFormat.currency(
//           locale: "en_US",
//           name: currencySymbol,
//           decimalDigits: number % 1 == 0 ? 0 : 2)
//       .format(number);
//
//   return price;
// }
//
// /// currency_symbol = '₹'
// /// currency_code = 'INR'
// /// country_name = 'India'
// /// currency_code_country_name = 'INR' + ',' + 'India'
// /// country_code = 'IN'
// ///
// /// time_zone = 'Asia/Kolkata'
//
// /*Future<void> getLocaleAndCurrencyDetails() async {
//   var currentLocale = Get.locale;
//   var format = NumberFormat.simpleCurrency(locale: Platform.localeName);
//
//   await CountryCodes.init(currentLocale);
//   final CountryDetails details = CountryCodes.detailsForLocale();
//
//   var currencySymbol = format.currencySymbol;
//   var currencyCode = format.currencyName;
//   var locale = format.locale; //"en_IN" for our app to convert everywhere
//
//   var countryName = details.name;
//   var countryTelephoneCode = details.dialCode;
//   var country2Code = details.alpha2Code;
//   //String currencyCodeCountryName = "$currencyCode,$countryName";
//
//   String timezone = await getTimeZoneId();
//
//   log("locale : ${Platform.localeName}");
//   log("countryName : $countryName");
//   log("currencyCode : $currencyCode");
//   log("country2Code : $country2Code");
//   // log("locale : ${Platform.localeName}");
//
//   StorageUtil.putString(SharedKeys.CURRENCY_SYMBOL, currencySymbol);
//   StorageUtil.putString(SharedKeys.CURRENCY_CODE, currencyCode);
//   StorageUtil.putString(SharedKeys.LOCALE, locale);
//   StorageUtil.putString(SharedKeys.COUNTRY_NAME, countryName);
//   StorageUtil.putString(SharedKeys.TIME_ZONE, timezone);
//   StorageUtil.putString(
//       SharedKeys.COUNTRY_TELEPHONIC_CODE, countryTelephoneCode);
//   StorageUtil.putString(SharedKeys.COUNTRY_2_CODE, country2Code);
//
//   getCurrencyConversion(currencyCode ?? "USD");
// }*/
//
// void getCurrentGPSLocation(Function callback) {
//   AppController appController = Get.put(AppController());
//   appController.getCurrentLocation().then((value) async {
//     log("getCurrentLocation : ${value?.latitude}");
//
//     if (value == null) {
//       getCurrencyDetails("US", callback);
//     } else {
//       var isoCountryCode = await appController.getIsoCountryCode(
//           value.latitude, value.longitude);
//       getCurrencyDetails(isoCountryCode, callback);
//     }
//   });
// }
//
// Future<void> getCurrencyDetails(
//     String? isoCountryCode, Function callback) async {
//   AppController appController = Get.put(AppController());
//
//   var cCode = const FlCountryCodePicker()
//       .countryCodes
//       .firstWhereOrNull((element) => element.code == isoCountryCode);
//
//   appController.isoCountryFlag.value = cCode?.flagUri;
//
//   if (appController.assetCountryList.isEmpty) {
//     appController
//         .getCountriesListFromAsset()
//         .then((value) => getCurrencyDetails(isoCountryCode, callback));
//     return;
//   }
//
//   var countryLocaleModel = await appController
//       .getCountryDetailByCountryIsoCode(isoCountryCode ?? "US");
//
//   var currencyModel = countryLocaleModel?.currencies?.first;
//
//   var currencySymbol = currencyModel?.symbol;
//   var currencyCode = currencyModel?.code;
//   //var locale = format.locale; //"en_IN" for our app to convert everywhere
//
//   var countryName = countryLocaleModel?.name;
//   var countryTelephoneCode = countryLocaleModel?.callingCodes?.first;
//   var country2Code = countryLocaleModel?.alpha2Code;
//   var timezone = countryLocaleModel?.timezones?.first;
//
//   log("country2Code: $country2Code");
//
//   StorageUtil.putString(SharedKeys.CURRENCY_SYMBOL, currencySymbol);
//   StorageUtil.putString(SharedKeys.CURRENCY_CODE, currencyCode);
//   //StorageUtil.putString(SharedKeys.LOCALE, locale);
//   StorageUtil.putString(SharedKeys.COUNTRY_NAME, countryName);
//   StorageUtil.putString(SharedKeys.TIME_ZONE, timezone);
//   StorageUtil.putString(
//       SharedKeys.COUNTRY_TELEPHONIC_CODE, countryTelephoneCode);
//   StorageUtil.putString(SharedKeys.ISO_COUNTRY_CODE, isoCountryCode);
//
//   getCurrencyConversion(currencyCode ?? "USD", callback);
// }
//
// Future<void> getCurrencyConversion(
//     String currencyCode, Function callback) async {
//   try {
//     var response = await LandingServices()
//         .currencyConversionApi(LocaleModel(currencyCode: currencyCode));
//     if (response.statusCode == 200) {
//       var localeResponse = response.data;
//
//       var rate = localeResponse?.currencyRate;
//
//       StorageUtil.putString(SharedKeys.CURRENCY_RATE, rate);
//
//       callback();
//     } else {
//       loadDefaultUSD(callback);
//     }
//   } catch (e) {
//     log("getOrderId ${e.toString()}");
//     loadDefaultUSD(callback);
//   }
// }
//
// void loadDefaultUSD(Function callback) {
//   AppController appController = Get.put(AppController());
//   appController.isoCountryCode.value = "US";
//   getCurrencyDetails("US", callback);
// }
//
// Future<void> navigateToMeetingApp(LiveSession liveSession) async {
//   if (Platform.isIOS ||
//       (await askingMicPermission() && await askingCamPermission())) {
//     if (liveSession.sessionType?.toLowerCase().contains("virtual") == true) {
//       Get.to(() => WhereBySessionRoomScreen(
//           sessionUrl: liveSession.roomUrl,
//           sessionName: liveSession.sessionHeader));
//     } else {
//       _launchUniversalLinkIos(Uri.parse(liveSession.sessionUrl ?? ""));
//     }
//   } else {
//     openAppSettings();
//   }
// }
//
// Future<void> _launchUniversalLinkIos(Uri url) async {
//   final bool nativeAppLaunchSucceeded = await launchUrl(
//     url,
//     mode: LaunchMode.externalNonBrowserApplication,
//   );
//   if (!nativeAppLaunchSucceeded) {
//     await launchUrl(
//       url,
//       mode: LaunchMode.externalApplication,
//     );
//   }
// }
//
// void openAppSettings() async {
//   AppSettings.openAppSettings();
// }
//
// Future<bool> askingMicPermission() async {
//   final PermissionStatus permissionStatus =
//       await Permission.microphone.request();
//   if (permissionStatus == PermissionStatus.granted) {
//     return Future.value(true);
//   } else {
//     return Future.value(false);
//   }
// }
//
// Future<bool> askingCamPermission() async {
//   final PermissionStatus permissionStatus = await Permission.camera.request();
//   if (permissionStatus == PermissionStatus.granted) {
//     return Future.value(true);
//   } else {
//     return Future.value(false);
//   }
// }
//
// Future<PermissionStatus> getMicPermission() async {
//   final PermissionStatus permission = await Permission.microphone.status;
//   if (permission != PermissionStatus.granted) {
//     final Map<Permission, PermissionStatus> permissionStatus =
//         await [Permission.microphone].request();
//
//     return permissionStatus[Permission.microphone] ??
//         PermissionStatus.permanentlyDenied;
//   } else {
//     return permission;
//   }
// }
//
// Future<PermissionStatus> getCameraPermission() async {
//   final PermissionStatus permission = await Permission.camera.status;
//   if (permission != PermissionStatus.granted) {
//     final Map<Permission, PermissionStatus> permissionStatus =
//         await [Permission.camera].request();
//     return permissionStatus[Permission.camera] ??
//         PermissionStatus.permanentlyDenied;
//   } else {
//     return permission;
//   }
// }
//
// bool isKids() {
//   return !StorageUtil.getBool(SharedKeys.IS_PROFESSIONAL_SELECTED);
// }
//
// String? getFilename(String fileName) {
//   var lastName = fileName.split("/").last;
//   if (lastName == null) {
//     return null;
//   } else {
//     return lastName;
//   }
// }
//
// Widget showMenuOptions(BuildContext context, bool isKids) {
//   final AppController appController = Get.put(AppController());
//   List<MenuOption> menuOptions = [];
//   if (appController.isLoggedIn.value == true) {
//     menuOptions.add(MenuOption(
//         menuName: 'Dashboard',
//         iconData: Icons.dashboard,
//         onClick: () {
//           Get.back();
//           Get.offAll(() => const BottomNavigationScreen());
//         }));
//     menuOptions.add(MenuOption(
//         menuName: 'Log Out',
//         iconData: Icons.logout,
//         onClick: () {
//           // Get.back();
//           // Get.offAll(() => const BottomNavigationScreen());
//           //logout();
//
//           logoutConfirmationBottomSheet(context);
//         }));
//   }
//
//     menuOptions.add(MenuOption(
//         menuName: isKids
//             ? 'Switch to ${Strings.INFYNI}'
//             : 'Switch to ${Strings.INFYNI_KIDS}',
//         iconData: Icons.school,
//         onClick: () {
//           String description =
//               "Are you sure you would like to switch to ${isKids ? Strings.INFYNI : Strings.INFYNI_KIDS}?";
//
//           customAcceptAndRejectBottomSheet(
//               context: context,
//               title:
//                   'Switch to ${isKids ? Strings.INFYNI : Strings.INFYNI_KIDS}',
//               description: description,
//               buttonOneText: "No",
//               buttonSecondText: "Yes",
//               descriptionTextAlign: TextAlign.center,
//               onClickButtonOne: () {
//                 Get.close(1);
//               },
//               onClickButtonSecond: () {
//                 if (isKids) {
//                   Get.to(() => const LandingScreen());
//                   appController.selectRole(AppRole.PROFESSIONAL, context);
//                 } else {
//                   Get.to(() => const KidsLandingPage());
//                   appController.selectRole(AppRole.KID, context);
//                 }
//               });
//         }));
//
//   if (appController.isLoggedIn.value != true) {
//     menuOptions.add(MenuOption(
//         menuName: 'Log In',
//         //iconData: Icons.login,
//         svgIconData: Assets.AC_LOGOUT,
//         onClick: () {
//           Get.back();
//           Get.to(() => LoginScreen());
//           // checkLoginAndRedirect((isCameFromLogin) {
//           //   Get.to(() => ProfileScreen());
//           // });
//         }));
//   }
//   if (appController.isLoggedIn.value != true) {
//     menuOptions.add(MenuOption(
//         menuName: 'Sign Up',
//         // iconData: Icons.person_add_outlined,
//         svgIconData: Assets.SVG_IC_ADD_USER,
//         onClick: () {
//           Get.back();
//           Get.to(() => SignUpScreen());
//         }));
//   }
//
//   List<PopupMenuItem> menuWidgets = [];
//
//   for (var element in menuOptions) {
//     menuWidgets.add(PopupMenuItem(
//       child: InkWell(
//         onTap: element.onClick,
//         child: Padding(
//             padding: const EdgeInsets.only(left: 0.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               //mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                     flex: 1,
//                     child: element.iconData == null
//                         ? SvgPicture.asset(
//                             element.svgIconData ?? "",
//                             height: 20,
//                             width: 20,
//                             color:
//                                 AppColor.onBackground(context).withAlpha(150),
//                           )
//                         : Icon(
//                             element.iconData,
//                           )),
//                 kwidth10,
//                 Expanded(
//                   flex: 4,
//                   child: Text(
//                     '${element.menuName}',
//                     textAlign: TextAlign.left,
//                   ),
//                 )
//               ],
//             )
//             // ListTile(
//             //   horizontalTitleGap: 15,
//             //   titleAlignment: ListTileTitleAlignment.center,
//             //   leading: element.iconData == null
//             //       ? SvgPicture.asset(
//             //           element.svgIconData ?? "",
//             //           height: 20,
//             //           width: 20,
//             //           color: AppColor.onBackground(context).withAlpha(150),
//             //         )
//             //       : Icon(
//             //           element.iconData,
//             //         ),
//             //   title: Text(
//             //     '${element.menuName}',
//             //     textAlign: TextAlign.left,
//             //   ),
//             // ),
//             ),
//       ),
//     ));
//   }
//
//   return PopupMenuButton(
//     // add icon, by default "3 dot" icon
//     // icon: Icon(Icons.book)
//     icon: Padding(
//       padding: const EdgeInsets.only(left: 0, right: 0),
//       child: SvgPicture.asset(
//         Assets.MENU,
//         color: isKids == true
//             ? AppColor.onBackground(context)
//             : AppColor.background(context),
//         // width: 15,
//       ),
//     ),
//     itemBuilder: (context) {
//       return menuWidgets;
//     },
//   );
// }
//
// FilePickerResult? result;
//
// Future<PlatformFile?> filePicker({bool? allowMultiple, FileType? type}) async {
//   try {
//     result = await FilePicker.platform.pickFiles(
//         allowCompression: true,
//         type: type ?? FileType.any,
//         allowMultiple: allowMultiple ?? false);
//
//     if (result != null) {
//       return result!.files.first;
//     }
//   } catch (e) {
//     log(e.toString());
//   }
// }
//
// Future<void> downloadFile(
//   BuildContext context, {
//   String? url,
// }) async {
//   final task = DownloadTask(
//       url: url ?? "",
//       urlQueryParameters: {'q': 'pizza'},
//       filename: getFilename(url ?? ""),
//       headers: {'myHeader': 'value'},
//       directory: 'downloads',
//       updates: Updates.statusAndProgress,
//       // request status and progress updates
//       requiresWiFi: true,
//       retries: 5,
//       allowPause: true,
//       metaData: 'data for me');
//
// // Start download, and wait for result. Show progress and status changes
// // while downloading
//   final result = await FileDownloader().download(task, onProgress: (progress) {
//     Padding(
//       padding: EdgeInsets.all(15.0),
//       child: LinearPercentIndicator(
//         width: MediaQuery.of(context).size.width - 50,
//         animation: true,
//         lineHeight: 20.0,
//         animationDuration: 2500,
//         percent: progress,
//         center: Text("$progress %"),
//         linearStrokeCap: LinearStrokeCap.roundAll,
//         progressColor: Colors.green,
//       ),
//     );
//   }, onStatus: (status) {
//     print(status);
//   });
//
// // Act on the result
//   switch (result) {
//     case TaskStatus.complete:
//       print('Success!');
//
//     case TaskStatus.canceled:
//       print('Download was canceled');
//
//     case TaskStatus.paused:
//       print('Download was paused');
//
//     default:
//       print('Download not successful');
//   }
// }
//
// //here you will find header is bold and body is light grey
// Widget commonHeaderAndBody(
//     {BuildContext? context, String? header, String? body}) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         header ?? "",
//         style: context?.textTheme.titleMedium
//             ?.copyWith(fontWeight: FontWeight.bold),
//       ),
//       Text(
//         body ?? "",
//         style: context?.textTheme.titleSmall
//             ?.copyWith(color: AppColor.onBackground(context).withAlpha(100)),
//       ),
//     ],
//   );
// }
//
// Widget commonTitleAndBody(
//     {BuildContext? context, String? title, String? body}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Text(
//         title ?? "",
//         style: context?.textTheme.titleSmall
//             ?.copyWith(color: AppColor.onBackground(context).withAlpha(100)),
//       ),
//       Text(
//         body ?? "",
//         style: context?.textTheme.titleMedium
//             ?.copyWith(color: AppColor.onBackground(context)),
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//       )
//     ],
//   );
// }
//
// Future<String> getInfyniAppVersion() async {
//   PackageInfo packageInfo = await PackageInfo.fromPlatform();
//
//   String appName = packageInfo.appName;
//   String packageName = packageInfo.packageName;
//   String version = packageInfo.version;
//   String buildNumber = packageInfo.buildNumber;
//
//   return Future.value(version);
// }
//
// Future<void> generateFCMToken(bool isLoggedIn) async {
//   AppController appController = Get.put(AppController());
//
//   var permission = await Permission.notification.request();
//
//   var fcmToken = StorageUtil.getString(SharedKeys.FCM_ID);
//    print("FCMToken $fcmToken");
//
//   if (fcmToken.isEmpty) {
//     final fcmToken = await FirebaseMessaging.instance.getToken();
//
//     StorageUtil.putString(SharedKeys.FCM_ID, fcmToken);
//
//     Future.delayed(const Duration(seconds: 2), () {
//       appController.saveStudentFCMDetails();
//     });
//
//
//   }else{
//     if(isLoggedIn){
//       Future.delayed(const Duration(seconds: 2), () {
//         appController.saveStudentFCMDetails();
//       });
//     }
//   }
// }
//
// logoutConfirmationBottomSheet(BuildContext context) {
//   customAcceptAndRejectBottomSheet(
//       context: context,
//       title: Strings.LOGOUT,
//       description: "Are you sure you want to log out?",
//       buttonOneText: "Cancel",
//       buttonSecondText: Strings.LOGOUT,
//       onClickButtonOne: () {
//         Get.back();
//       },
//       onClickButtonSecond: () {
//         logout();
//       });
// }
