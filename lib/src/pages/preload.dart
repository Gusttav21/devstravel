import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';

class PreloadPage extends StatefulWidget {
  const PreloadPage({Key? key}) : super(key: key);

  @override
  _PreloadPage createState() => _PreloadPage();
}

class _PreloadPage extends State<PreloadPage> {
  bool loading = true;

  void requestInfo() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      loading = true;
    });

    bool req = await Provider.of<AppData>(context, listen: false).requestData();
    if (req) {
      // ir home

      Navigator.pushReplacementNamed(context, '/home');
    } else {
      setState(() {
        loading = false;
      });
    }
  }

  void initState() {
    super.initState();
    requestInfo();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/flutter1_devstravel_logo.png',
            width: 200,
            height: 200,
          ),
          loading
              ? const Text(
                  'Carregando Países...',
                  style: TextStyle(fontSize: 16),
                )
              : Container(),
          loading
              ? Image.asset(
                  'lib/assets/loading2.gif',
                  width: 100,
                )
              : Container(),
          !loading
              ? Container(
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                      child: Text('Tentar Novamente'), onPressed: requestInfo),
                )
              : Container()
        ],
      )),
    );
  }
}
