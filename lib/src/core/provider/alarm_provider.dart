import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class AlarmProvider {
  Future<void> setOffAlarm() async {
    FlutterRingtonePlayer.play(
      android: AndroidSounds.ringtone,
      ios: IosSounds.alarm,
      volume: 1,
      looping: false, // Android only - API >= 28
      asAlarm: true, // Android only - all APIs
    );
  }

  Future<void> showNotification() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      '1',
      'alarm',
    );
    var iOSPlatformChannelSpecifics = const IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0,
        'TRAIN ALARM WOOHOO WOO HOOO',
        'Vstávej kocoure/kočko/koťátko seš ve svý stanici tak nespi WOOHOO!!',
        platformChannelSpecifics);
  }
}
