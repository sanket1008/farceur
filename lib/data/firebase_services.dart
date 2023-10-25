// import 'dart:convert';
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:infyni_student/main.dart';
// import 'package:infyni_student/module/Notification/view/notification_screen.dart';
//
// class FireBaseServices {
//   final _firebaseMessaging = FirebaseMessaging.instance;
//
//   Future<void> initNotification() async {
//     await _firebaseMessaging.requestPermission();
//     final fcmToken = await _firebaseMessaging.getToken();
//
//     print("fcmToken----->${fcmToken}");
//
//     initPushNotification();
//     initLocalNotifications();
//
//     //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   }
// }
//
// Future initLocalNotifications() async {
//   const iOS = DarwinInitializationSettings();
//   const android = AndroidInitializationSettings('@drawable/ic_launcher');
//   const settings = InitializationSettings(android: android, iOS: iOS);
//
//   await _localNotifications.initialize(
//     settings,
//   );
//   //TODO:ONSelected is Missing
//
//   final platForm = _localNotifications.resolvePlatformSpecificImplementation<
//       AndroidFlutterLocalNotificationsPlugin>();
//   await platForm?.createNotificationChannel(_androidChannel);
// }
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print(
//       "Handling a background notification title: ${message.notification?.title}");
//   print(
//       "Handling a background notification body: ${message.notification?.body}");
//   print("Handling a  message: ${message.data}");
//   //showFlutterNotification(message);
// }
//
// FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
//
// void handleFlutterNotification(RemoteMessage message) {
//
//   if (message == null) return;
//   navigatorKey.currentState
//       ?.pushNamed(NotificationScreen.route, arguments: message);
// }
//
// final _localNotifications = FlutterLocalNotificationsPlugin();
// const _androidChannel = AndroidNotificationChannel(
//     "high_importance_channel", "High Importance Notification",
//     description: "This channel is used to high importance notification",
//     importance: Importance.defaultImportance);
//
// Future initPushNotification() async {
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
//   FirebaseMessaging.instance
//       .getInitialMessage()
//       .then((value) => handleFlutterNotification(value!));
//   FirebaseMessaging.onMessageOpenedApp
//       .listen((value) => handleFlutterNotification(value));
//   FirebaseMessaging.onBackgroundMessage(
//       (message) => _firebaseMessagingBackgroundHandler(message));
//
//   FirebaseMessaging.onMessage.listen((event) {
//     final notification = event.notification;
//     if (notification == null) return;
//     _localNotifications.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//               _androidChannel.id, _androidChannel.name,
//               channelDescription: _androidChannel.description,
//               icon: "@drawable/ic_launcher"),
//         ),
//         payload: jsonEncode(event.toMap()));
//   });
// }
