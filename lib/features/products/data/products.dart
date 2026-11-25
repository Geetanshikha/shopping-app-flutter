import '../domain/product.dart';
import '../../../core/utils/app_assets.dart';

const List<Product> products = [
  Product(
    id: '1',
    name: 'Linen Overshirt',
    image: AppAssets.linenOvershirt,
    category: 'Fashion',
    price: 2499.0,
    rating: 4.8,
    description: 'A comfortable, premium-quality linen overshirt for everyday wear.',
  ),
  Product(
    id: '2',
    name: 'Wireless Headphones',
    image: AppAssets.wirelessHeadphones,
    category: 'Electronics',
    price: 3999.0,
    rating: 4.7,
    description: 'Enjoy immersive sound with comfortable wireless headphones.',
  ),
  Product(
    id: '3',
    name: 'Ceramic Table Lamp',
    image: AppAssets.ceramicLamp,
    category: 'Home',
    price: 1899.0,
    rating: 4.6,
    description: 'A beautiful ceramic lamp that adds warmth to your space.',
  ),
  Product(
    id: '4',
    name: 'Canvas Sneakers',
    image: AppAssets.canvasSneakers,
    category: 'Footwear',
    price: 2199.0,
    rating: 4.9,
    description: 'Lightweight canvas sneakers designed for everyday comfort.',
  ),
];