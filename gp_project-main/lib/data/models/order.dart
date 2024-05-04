class order_model {
  String itemName;
  String quantity;
  String orderPrice;
  String image;
  String status;
  String condition;

  order_model({
    required this.itemName,
    required this.quantity,
    required this.status,
    required this.orderPrice,
    required this.image,
    required this.condition,
  });
}
