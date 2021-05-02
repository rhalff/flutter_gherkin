import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric RestartAppStep() {
  return given<FlutterWorld>(
    'I restart the app',
    (context) async {
      final timeout = context.configuration.timeout;

      if (timeout != null) {
        await context.world.restartApp(
          timeout: timeout,
        );
      } else {
        await context.world.restartApp();
      }
    },
  );
}
