import 'package:assignment_13/src/theme/my_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: MyColor.grayBg,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      // ),
      backgroundColor: MyColor.grayBg,
      /*
      *
      * Here we will start
      *
      * */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*
            *
            * Container for TextFormField
            *
            * */
            Container(
              width: 350,
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.whiteBg,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      // controller: _confirmPasswordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.blueLight,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.blueLight,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.blueLight,
                            width: 1.0,
                          ),
                        ),
                        fillColor: MyColor.whiteBg,
                        filled: true,
                        labelText: 'Card Number',
                        labelStyle: TextStyle(fontSize: 18.0),
                      ),
                      // validator: validateConfirmPassword
                    ),
                    /*
                    *
                    *
                    *
                    * */
                    SizedBox(height: 20),
                    /*
                    *
                    *
                    *
                    * */
                    Row(
                      children: [
                        Container(
                          width: 140,
                          child: TextFormField(
                            // controller: _confirmPasswordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColor.blueLight,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColor.blueLight,
                                  width: 1.0,
                                ),
                              ),
                              fillColor: MyColor.whiteBg,
                              filled: true,
                              labelText: 'Expired date (MM)',
                              labelStyle: TextStyle(fontSize: 11.0),
                            ),
                            // validator: validateConfirmPassword
                          ),
                        ),
                        /*
                        *
                        *
                        *
                        *
                        * */
                        Spacer(),
                        /*
                        *
                        *
                        *
                        *
                        * */
                        Container(
                          width: 140,
                          child: TextFormField(
                            // controller: _confirmPasswordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColor.blueLight,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColor.blueLight,
                                  width: 1.0,
                                ),
                              ),
                              fillColor: MyColor.whiteBg,
                              filled: true,
                              labelStyle: TextStyle(fontSize: 11.0),
                              labelText: 'Expired date (MM)',
                            ),
                            // validator: validateConfirmPassword
                          ),
                        ),
                      ],
                    ),
                    /*
                    *
                    *
                    *
                    * */
                    SizedBox(height: 20),
                    /*
                    *
                    *
                    *
                    * */
                    TextFormField(
                      // controller: _confirmPasswordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.blueLight,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.blueLight,
                            width: 1.0,
                          ),
                        ),
                        fillColor: MyColor.whiteBg,
                        filled: true,
                        labelText: 'Holder Number',
                        labelStyle: TextStyle(fontSize: 18.0),
                      ),
                      // validator: validateConfirmPassword
                    ),
                  ],
                ),
              ),
            ),
            /*
            *
            *
            *
            * */
            SizedBox(height: 40),
            /*
            *
            *
            *
            * */
            ElevatedButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 300,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'FAHAD ALHARBI',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '1234 5678 9123 4567',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 8),
                                  Text(
                                    '11/26',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets
                    .zero, // Removes the default padding from the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), // Matches the Ink's borderRadius
                ),
                elevation:
                    0, // Optional: to remove any shadow that might add to the white effect
              ),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[MyColor.blue10, MyColor.blur20],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Container(
                  width: 269,
                  height: 53,
                  alignment: Alignment.center,
                  child: const Text(
                    'Show card data',
                    style: TextStyle(
                      color: MyColor.whiteBg,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
