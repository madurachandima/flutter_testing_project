import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_testing_project/main.dart' as app;
// TODO 5: Import the app that you want to test

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("full app test", (tester) async {
      app.main();

      await tester.pumpAndSettle();
      final goLoginButton = find.byKey(const Key("goLoginButtonKey"));

      await tester.tap(goLoginButton);
      await tester.pumpAndSettle();

      final username = find.byKey(const Key("loginUsernameText"));
      final password = find.byKey(const Key("loginPasswordText"));
      final loginButton = find.byKey(const Key("clickLoginButton"));

      await tester.enterText(username, "user");
      await tester.enterText(password, "123");

      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      final showTextButton = find.byKey(const Key("showHideTextButton"));
      await tester.tap(showTextButton);
      await tester.pumpAndSettle();

      final showText = find.byKey(const Key("showText"));
      // print((showText.first.evaluate().single.widget as Text).data);
      await tester.pumpAndSettle();

      expect((showText.first.evaluate().single.widget as Text).data,
          "Hello Flutter Fail");
    });
  });
}
