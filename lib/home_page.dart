import 'package:flutter/material.dart';
import 'package:lightning_vpn/server_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isConnected = false;
  bool _isConnecting = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "ADD TIME",
                textScaleFactor: 0.999,
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.3,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          )
        ],
        shadowColor: Colors.black12,
        backgroundColor: theme.scaffoldBackgroundColor,
        title: const Text(
          "Lithning VPN",
          style: TextStyle(color: Colors.black87, fontSize: 19),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const InfoRow("IP", "192.54.36.373"),
            Image.asset("assets/images/logo.png"),
            // Expanded(
            //     child: Container(
            //   child: Image.asset("assets/images/logo.png"),
            // )),
            const InfoColumn("Remaining Time", "03:04:30", switchedColor: true),
            // const SizedBox(height: 32),
            ListTile(
              tileColor: Colors.blueGrey[50],
              leading: const Icon(Icons.language),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              title: const Text("Fastest Server"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const ServerList())),
            ),
            // const SizedBox(height: 28),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () => setState(() => _isConnected = !_isConnected),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!_isConnecting)
                    _isConnected
                        ? Image.asset(
                            "assets/images/flash.png",
                            width: 24,
                            height: 24,
                            scale: 25,
                          )
                        : const Icon(Icons.wifi_off_rounded),
                  const SizedBox(width: 8),
                  _isConnecting
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          ),
                        )
                      : Text(
                          _isConnected ? "CONNECTED" : "DISCONNECTED",
                          textScaleFactor: 1.3,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String _label;
  final String _value;
  final bool switchedColor;
  const InfoRow(
    this._label,
    this._value, {
    this.switchedColor = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$_label: ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: switchedColor ? Colors.black.withAlpha(180) : Colors.blue,
            fontSize: 17,
          ),
        ),
        Text(
          _value,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: switchedColor ? Colors.blue : Colors.black.withAlpha(180),
          ),
        )
      ],
    );
  }
}

class InfoColumn extends StatelessWidget {
  final String _label;
  final String _value;
  final bool switchedColor;
  const InfoColumn(
    this._label,
    this._value, {
    this.switchedColor = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$_label ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: switchedColor ? Colors.black.withAlpha(180) : Colors.blue,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          _value,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: switchedColor ? Colors.blue : Colors.black.withAlpha(180),
          ),
        )
      ],
    );
  }
}
