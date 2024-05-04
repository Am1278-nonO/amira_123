import 'dart:ffi';

class auction_model {
  String itemName;
  String StartAuction;
  String time;
  String yourPrice;
  String image;
  double quantity;
  String status;
  auction_model(
      {required this.StartAuction,
      required this.itemName,
      required this.quantity,
      required this.image,
      required this.status,
      required this.yourPrice,
      required this.time});
}
