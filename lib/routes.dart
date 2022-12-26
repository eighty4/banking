class BankingRoutes {
  static const String lobby = '/';
  static const String accounts = '/accounts';
  static const String groupings = '/groupings';
  static const String receipts = '/receipts';
  static const String allTransactions = '/transactions';

  static String accountTransactions(String accountId) =>
      '/transactions/account/$accountId';

  static bool matchesAccountTransactions(String path) =>
      path.startsWith('/transactions/account/');

  static String getAccountTransactionsRouteAccountId(String path) =>
      path.substring('/transactions/account/'.length);

  static String groupingTransactions(String groupingId) =>
      '/transactions/grouping/$groupingId';

  static bool matchesGroupingTransactions(String path) =>
      path.startsWith('/transactions/grouping/');

  static String getGroupingTransactionsRouteGroupingId(String path) =>
      path.substring('/transactions/account/'.length);
}
