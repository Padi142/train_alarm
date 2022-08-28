import 'package:flutter/material.dart';
import 'package:train_alarm/constants.dart' as constants;
import 'package:train_alarm/src/ui/views/info_page.dart';

class AppTitle extends StatelessWidget {
  final String title;
  const AppTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 4),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.90,
        child: Container(
            decoration: BoxDecoration(
                color: constants.secondaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InfoPage()),
                        );
                      },
                      icon: const Icon(Icons.info))
                ],
              ),
            )),
      ),
    );
  }
}
