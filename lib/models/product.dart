class Product {
  final String imagePath;
  final String productName;
  final String productPrice;

  Product(this.imagePath, this.productName, this.productPrice);
}

final List<Product> products = [
  Product('images/sarah-dorweiler-fr0J5-GIVyg-unsplash 1 (1).png', 'Product 1',
      '\$12.00'),
  Product('images/jonny-caspari-wsvCC6UyKjs-unsplash 1.png', 'Product 1',
      '\$12.00'),
  Product('images/sarah-dorweiler-fr0J5-GIVyg-unsplash 1 (1).png', 'Product 1',
      '\$12.00'),
  Product('images/jonny-caspari-wsvCC6UyKjs-unsplash 1.png', 'Product 1',
      '\$12.00'),
];
