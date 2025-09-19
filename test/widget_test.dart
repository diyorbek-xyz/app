import 'package:flutter_test/flutter_test.dart';
import 'package:application/main.dart';

void main() {
  testWidgets('AmediaTV', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
