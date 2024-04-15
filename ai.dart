import 'dart:io';

void main() {
  Map<String, int> products = {
    'Banana': 1,
    'Apple': 2,
    'Orange': 3, // Corrected capitalization for consistency
    'Bread': 4,
    'Wine': 5,
  };

  List<String> mustBuy = [
    'Orange', // Corrected capitalization for consistency
    'Banana',
    'Wine',
  ];

  bool keepGoing = true; // Flag to control loop continuation

  while (keepGoing) {
    stdout.writeln('press 1 to add a product, 2 to show products, or 3 to delete a product, or enter "q" to quit: ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.writeln('Enter product name to add: ');
        var productName = stdin.readLineSync();
        if (productName != null && productName.isNotEmpty) {
          stdout.writeln('Enter product price: ');
          var price = int.tryParse(stdin.readLineSync() ?? ''); // Handle potential parsing errors
          if (price != null) {
            products[productName] = price; // Add product and price to the map
            stdout.writeln('$productName added to the list.');
          } else {
            stdout.writeln('Invalid price. Please enter a number.');
          }
        } else {
          stdout.writeln('Please enter a product name.');
        }
        

      case '2':
        if (products.isEmpty) {
          stdout.writeln('No products in the list.');
        } else {
          stdout.writeln('Current products:');
          products.forEach((name, price) => stdout.writeln('$name: \$$price'));
        }
        

      case '3':
        stdout.writeln('Enter product name to delete: ');
        var productName = stdin.readLineSync();
        if (products.containsKey(productName)) {
          products.remove(productName);
          stdout.writeln('$productName deleted from the list.');
        } else {
          stdout.writeln('Product not found.');
        }
        

      case 'q':
      case 'Q':
        keepGoing = false;
        stdout.writeln('Goodbye!');
        

      default:
        stdout.writeln('Invalid choice. Please try again.');
        
    }
  }
}
