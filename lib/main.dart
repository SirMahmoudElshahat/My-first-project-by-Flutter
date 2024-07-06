import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SimpleProject(),
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 35,
                color: Colors.blue,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.blue,
                ))
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 20),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "Hello! 😍",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 20),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "Mahmoud",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 20),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "Elshahat",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 20),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "How",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 20),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "are",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.fromLTRB(63, 20, 10, 30),
                    padding: EdgeInsets.all(22),
                    child: Text(
                      "you?",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.redAccent,
                        fontFamily: "myFont",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Message"),
                        content: Image.asset(
                          "assets/2.jpg",
                          fit: BoxFit.cover,
                          width: 125,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 93, 198, 247)),
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.fromLTRB(6, 70, 0, 0),
              child: SvgPicture.asset("assets/home.svg",width: 37,color: Colors.blue,),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.fromLTRB(6, 130, 0, 0),
              child: SvgPicture.asset("assets/movie.svg",width: 37,color: Colors.blue,),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.fromLTRB(6, 190, 0, 0),
              child: SvgPicture.asset("assets/frends.svg",width: 37,color: Colors.blue,),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.fromLTRB(6, 260, 0, 0),
              child: SvgPicture.asset("assets/bell.svg",width: 37,color: Colors.blue,),
            ),
          ],
        ));
  }
}
