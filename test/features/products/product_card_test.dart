import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/features/products/data/products.dart';
import 'package:flutter_application_1/features/products/presentation/widgets/product_card.dart';

void main() {
  testWidgets('each product card displays its product image',
      (WidgetTester tester) async {
    for (final product in products) {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProductCard(product: product, onTap: () {}),
          ),
        ),
      );

      final image = tester.widget<Image>(find.byType(Image));
      expect(
        image.image,
        isA<AssetImage>().having(
          (provider) => provider.assetName,
          'assetName',
          product.image,
        ),
      );
    }
  });
}
