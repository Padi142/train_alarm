import 'package:flutter/material.dart';
import 'package:train_alarm/constants.dart' as constants;

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Container(
                      decoration: BoxDecoration(
                          color: constants.mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.arrow_back)),
                            const Text(
                              "Train alarm",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.90,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Ahoj cs diky moc ze sis stahl/a/o tuhle apku , vubec nevim jestli to bude fungoval ale dofam ze jo xd",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Tim hornim sliderem vyberes kolik km od adresy t?? to m?? upozornit a hned pod tim je mapa na v??b??r adresy s hled??n??m",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Basically to vezme GPS koordinace toho co je uprost??ed t?? mapy kdy?? klikne?? na tla????tko nastavit",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Teoreticky by to m??lo fungovat kdy?? apku d???? do pozad?? (jako??e odejde?? z ty apky ale nevypne?? ji), tak??e by m??lo sta??it kliknout na nastavit a pak m????e?? na ig nebo tiktok nebo cokoliv ALE NEJSEM SI JESTE NA 100% JISTEJ ZE TO FUNGUJE proto je tohle alpha verze",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "M????e?? nastavit vic jak jedno upozorn??ni na stejna i jina mista",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Nezapomen mi pak napsat na ig @matyslav_ jestli to funguje nebo ne a p??ipadn?? navrhy na vylep??eni (Pracuju an seznamu oblibenych stanic aby se to nemuselo pokazdy hledat)",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.network(
                    "https://i.pinimg.com/736x/c3/3e/38/c33e38ba0b4a6252bfb4276926a1c4d2.jpg"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Gort",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
