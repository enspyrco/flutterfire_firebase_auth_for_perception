import 'package:flutterfire_firebase_auth_service/flutterfire_identity_beliefs.dart';
import 'package:abstractions/identity.dart';
import 'package:abstractions/beliefs.dart';

class ExampleAppState implements CoreBeliefs, IdentityConcept {
  ExampleAppState({required this.auth});

  static ExampleAppState get initial =>
      ExampleAppState(auth: const FlutterfireIdentityBeliefs());

  @override
  final FlutterfireIdentityBeliefs auth;

  @override
  ExampleAppState copyWith({FlutterfireIdentityBeliefs? auth}) {
    return ExampleAppState(auth: auth ?? this.auth);
  }

  @override
  toJson() => {'auth': auth.toJson()};

  @override
  bool operator ==(Object other) =>
      other is ExampleAppState && other.auth == auth;

  @override
  int get hashCode => auth.hashCode;
}
