import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_application_1/features/products/data/products.dart';
import 'package:flutter_application_1/features/products/presentation/screen/home_screen.dart';

void main() {
  testWidgets('tapping a product opens its details',
      (WidgetTester tester) async {
    final product = products.first;

    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );

    await tester.tap(find.text(product.name));
    await tester.pumpAndSettle();

    expect(find.text('Product Details'), findsOneWidget);
    expect(find.text(product.name), findsOneWidget);
    expect(find.text(product.category), findsOneWidget);
    expect(find.text(product.description), findsOneWidget);
  });
}
