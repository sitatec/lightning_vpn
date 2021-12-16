import 'package:flutter/material.dart';
import 'package:lightning_vpn/utils.dart';

class ServerList extends StatefulWidget {
  const ServerList({Key? key}) : super(key: key);

  @override
  State<ServerList> createState() => _ServerListState();
}

class _ServerListState extends State<ServerList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black87,
        title: const Text(
          "Servers",
          style: TextStyle(fontSize: 19),
        ),
        centerTitle: true,
        shadowColor: Colors.black12,
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.blueGrey[50],
                leading: const Icon(Icons.language),
                trailing: Radio<bool>(
                    value: true, groupValue: true, onChanged: (value) {}),
                title: const Text("Fastest Server"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ExpansionTile(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  collapsedBackgroundColor: Colors.blueGrey[50],
                  leading: Image.network(
                    getCountryFlagUrl("us"),
                    width: 32,
                    height: 32,
                  ),
                  // trailing: const Icon(Icons.arrow_drop_down),
                  title: const Text("United States"),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  onExpansionChanged: (expanded) {},
                  children: [
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        minLeadingWidth: 3,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            getCountryFlagUrl("us"),
                            width: 25.5,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text("US (192.54.36.373)"),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "14ms",
                              style: TextStyle(color: Colors.green),
                            ),
                            Radio<bool>(
                              groupValue: false,
                              value: false,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        minLeadingWidth: 3,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            getCountryFlagUrl("us"),
                            width: 25.5,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text("US (192.54.36.373)"),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "14ms",
                              style: TextStyle(color: Colors.red),
                            ),
                            Radio<bool>(
                              groupValue: true,
                              value: false,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        minLeadingWidth: 3,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            getCountryFlagUrl("us"),
                            width: 25.5,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text("US (192.54.36.373)"),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "14ms",
                              style: TextStyle(color: Colors.green),
                            ),
                            Radio<bool>(
                              groupValue: true,
                              value: false,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
