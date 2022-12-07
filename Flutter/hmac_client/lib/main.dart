import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert' as convert;
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

String percentEncode(String input) {
  // Do initial percentage encoding of using Uri.encodeComponent()
  input = Uri.encodeComponent(input);

  // Percentage encode characters ignored by Uri.encodeComponent()
  input = input.replaceAll('-', '%2D');
  input = input.replaceAll('_', '%5F');
  //input = input.replaceAll('.', '%2E');
  input = input.replaceAll('!', '%21');
  input = input.replaceAll('~', '%7E');
  input = input.replaceAll('*', '%2A');
  input = input.replaceAll('\'', '%5C');
  input = input.replaceAll('(', '%28');
  input = input.replaceAll(')', '%29');

  return input;
}

String percentDecode(String input) {
  // Do initial percentage decoding using Uri.decodeComponent()
  input = Uri.decodeComponent(input);

  // Percentage decode characters ignored by Uri.decodeComponent()
  input = input.replaceAll('%2D', '-');
  input = input.replaceAll('%5F', '_');
  input = input.replaceAll('%2E', '.');
  input = input.replaceAll('%21', '!');
  input = input.replaceAll('%7E', '~');
  input = input.replaceAll('%2A', '*');
  input = input.replaceAll('%5C', '\'');
  input = input.replaceAll('%28', '(');
  input = input.replaceAll('%29', ')');

  return input;
}

enum AuthorizationMethod { get, post }

String genAuthorizationHMAC({required AuthorizationMethod httpMethod}) {
  const String appId = "4d53bce03ec34c0a911182d4c228ee6c";
  const String apiKey = "A93reRTUJHsCuQSHR+L3GxqOJyDmQpCgps102ciuabc=";

  const String apiBaseAddress = "http://www.happyrocos.com/api/HMACTest";
  final requestUri = percentEncode(apiBaseAddress.toLowerCase()).toLowerCase();

  final epochStart = DateTime.utc(1970, 01, 01, 0, 0, 0, 0, 0);
  final timeSpan = DateTime.now().toUtc().difference(epochStart);
  String requestTimeStamp = timeSpan.inSeconds.toString();

  //String requestHttpMethod = method.toString().toUpperCase();
  String requestHttpMethod = httpMethod.toString().toUpperCase().split('.').last;

  var uuid = const Uuid();
  // Generate a v1 (time-based) id
  String nonce = uuid
      .v1()
      .replaceAll('-', ''); // -> '6c84fb90-12c4-11e1-840d-7b25c5ee775a'

  final requestContentBase64String = '';

  final signatureRawData =
      '$appId$requestHttpMethod$requestUri$requestTimeStamp$nonce$requestContentBase64String';

  List<int> secretKeyByteArray = convert.base64.decode(apiKey);
  final signature = convert.utf8.encode(signatureRawData);

  var output = AccumulatorSink<Digest>();
  var hmac = Hmac(sha256, secretKeyByteArray);
  var byteConversionSink = hmac.startChunkedConversion(output);
  byteConversionSink.add(signature); // call `add` for every chunk of input data
  byteConversionSink.close();
  var digest = output.events.single;
  final signatureBytes = digest.bytes;
  final requestSignatureBase64String = convert.base64.encode(signatureBytes);

  final Authorization =
      'amx $appId:$requestSignatureBase64String:$nonce:$requestTimeStamp';

  return Authorization;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var authCode = genAuthorizationHMAC(httpMethod: AuthorizationMethod.get );
  String responseData = 'response';

  void httpTest() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url =
        Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
    print('url: $url');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  void hmacClientTest() async {
    authCode = genAuthorizationHMAC(httpMethod: AuthorizationMethod.get);

    //http://www.happyrocos.com/api/HMACTest
    var url = Uri.http('www.happyrocos.com', '/api/HMACTest');
    print('url: $url');

    var response = await http.get(url, headers: {
      'Authorization': authCode,
    });
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      responseData = jsonResponse.toString();
    } else {
      responseData = 'Request failed with status: ${response.statusCode}.';
    }
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
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // authCode = genAuthorizationHMAC();
                  // httpTest();
                  hmacClientTest();
                });
              },
              child: const Text('Gen HMAC Authorization Code'),
            ),
            Text(responseData),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
