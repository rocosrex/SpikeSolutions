class TestModel {
  final int orderID;
  final String customerName;
  final String shipperCity;
  final bool isShipped;

  const TestModel({
    required this.orderID,
    required this.customerName,
    required this.shipperCity,
    required this.isShipped,
  });

  Map<String, dynamic> toJson() => {
        'OrderID': orderID,
        'CustomerName': customerName,
        'ShipperCity': shipperCity,
        'IsShipped': isShipped
      };
}
