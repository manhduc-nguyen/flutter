import 'package:alan/alan.dart';
import 'package:cosmos_ui_components/cosmos_theme.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/pages/routing_page.dart';
import 'package:starport_template/stores/wallets_store.dart';
import 'package:starport_template/utils/base_env.dart';
import 'package:transaction_signing_gateway/gateway/transaction_signing_gateway.dart';

class StarportApp extends StatelessWidget {
  static late TransactionSigningGateway signingGateway;
  static late WalletsStore walletsStore;
  static late BaseEnv baseEnv;
  static late NetworkInfo networkInfo;

  @override
  Widget build(BuildContext context) {
    return CosmosTheme(
      child: MaterialApp(
        title: 'Starport template',
        darkTheme: CosmosTheme.buildDarkAppTheme(),
        theme: CosmosTheme.buildAppTheme(),
        home: const RoutingPage(),
      ),
    );
  }
}
