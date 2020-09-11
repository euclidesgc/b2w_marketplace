import 'package:b2w_marketplace/app/modules/dashboard/dashboard_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('DashboardPage has title', (tester) async {
    await tester.pumpWidget(buildTestableWidget(DashboardPage(title: 'Dashboard')));
    final titleFinder = find.text('Dashboard');
    expect(titleFinder, findsOneWidget);
  });
}
