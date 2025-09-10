import 'package:ecommerce_app/features/my_orders/model/order.dart';

class OrderRepository {
  List<Order> getOrders() {
    return [
      Order(
        OrderNumber: '123432',
        itemCount: 2,
        totalAmount: 2983.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '322422',
        itemCount: 2,
        totalAmount: 432.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '64353',
        itemCount: 2,
        totalAmount: 546.3,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '254242',
        itemCount: 5,
        totalAmount: 4231.3,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoes2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ];
  }

  List<Order> getOrdersByStatus(OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
