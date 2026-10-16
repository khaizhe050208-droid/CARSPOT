
import 'package:flutter_test/flutter_test.dart';
import 'package:carspot/main.dart';

void main() {
  testWidgets('CarSpot app launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const CarSpotApp());

    expect(find.text('CARSPOT'), findsOneWidget);
  });
}
