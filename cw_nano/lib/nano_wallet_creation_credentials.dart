import 'package:cw_core/wallet_credentials.dart';
import 'package:cw_core/wallet_info.dart';

class NanoNewWalletCredentials extends WalletCredentials {
  NanoNewWalletCredentials({
    required String name,
    String? password,
    DerivationType? derivationType,
  }) : super(
          name: name,
          password: password,
          derivationInfo: DerivationInfo(derivationType: derivationType),
        );
}

class NanoRestoreWalletFromSeedCredentials extends WalletCredentials {
  NanoRestoreWalletFromSeedCredentials({
    required String name,
    required this.mnemonic,
    String? password,
    required DerivationType derivationType,
  }) : super(
          name: name,
          password: password,
          derivationInfo: DerivationInfo(derivationType: derivationType),
        );

  final String mnemonic;
}

class NanoWalletLoadingException implements Exception {
  @override
  String toString() => 'Failure to load the wallet.';
}

class NanoRestoreWalletFromKeysCredentials extends WalletCredentials {
  NanoRestoreWalletFromKeysCredentials({
    required String name,
    required String password,
    required DerivationType derivationType,
    required this.seedKey,
  }) : super(
          name: name,
          password: password,
          derivationInfo: DerivationInfo(derivationType: derivationType),
        );

  final String seedKey;
}
