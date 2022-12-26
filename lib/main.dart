import 'package:banking/gradients.dart';
import 'package:flutter/material.dart';

import 'accounts.dart';
import 'groupings.dart';
import 'lobby.dart';
import 'transactions.dart';
import 'receipts.dart';
import 'routes.dart';

void main() {
  runApp(const BankingApp());
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking',
      initialRoute: BankingRoutes.lobby,
      onGenerateRoute: (settings) {
        Widget? screen;
        if (settings.name == null || settings.name == BankingRoutes.lobby) {
          screen = const LobbyScreen();
        } else if (settings.name == BankingRoutes.accounts) {
          screen = const AccountsScreen();
        } else if (settings.name == BankingRoutes.groupings) {
          screen = const GroupingsScreen();
        } else if (settings.name == BankingRoutes.receipts) {
          screen = const ReceiptsScreen();
        } else if (settings.name == BankingRoutes.allTransactions) {
          screen = const TransactionsScreen();
        } else if (BankingRoutes.matchesAccountTransactions(settings.name!)) {
          screen = const TransactionsScreen();
        } else if (BankingRoutes.matchesGroupingTransactions(settings.name!)) {
          screen = const TransactionsScreen();
        }

        assert(screen != null, 'onGenerateRoute did not resolve a route');
        screen ??= const LobbyScreen();
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                body: Container(
                    decoration: const BoxDecoration(gradient: ibizaSunset),
                    child: SafeArea(child: screen!))));
      },
    );
  }
}
