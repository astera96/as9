import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  String image1 =
      "https://images.pexels.com/photos/1462636/pexels-photo-1462636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  String imag2 =
      "https://images.pexels.com/photos/266004/pexels-photo-266004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  String image3 =
      "https://images.pexels.com/photos/834507/pexels-photo-834507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";

  String image4 =
      "https://images.unsplash.com/photo-1627594042767-28ac5bca02c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmFieSUyMGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  // This widget is the root of your application. aa
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Baby's album"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 220,
              width: 220,
              child: Image.network(image1),
            ),
            Divider(
              height: 30,
              color: Colors.pink,
              thickness: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () => setState(() {
                      image1 = imag2;
                    }),
                    child: Image.network(imag2),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () => setState(() {
                      image1 = image3;
                    }),
                    child: Image.network(image3),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () => setState(() {
                      image1 = image4;
                    }),
                    child: Image.network(image4),
                  ),
                ),
              ],
            ),
            Container(
                child: ElevatedButton(
                    onPressed: (() => setState(() {
                          if (image1 !=
                              "https://images.pexels.com/photos/1462636/pexels-photo-1462636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") {
                            image1 =
                                "https://images.pexels.com/photos/1462636/pexels-photo-1462636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
                          } else {
                            print("Its all ready show main Image");
                          }
                        })),
                    child: Text("Reset Image")))
          ],
        ),
      ),
    );
  }
}
