import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_alarm/src/core/bloc/train/train_bloc.dart';
import 'package:train_alarm/src/ui/views/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:train_alarm/constants.dart' as constants;

class TemplateApp extends StatelessWidget {
  const TemplateApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TrainBloc>(
            create: (BuildContext context) => TrainBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Train alarm",
          theme: ThemeData(
              scaffoldBackgroundColor: constants.backroudColor,
              canvasColor: constants.mainColor,
              textTheme: GoogleFonts.rubikTextTheme()),
          home: const MainPage(),
        ));
  }
}
