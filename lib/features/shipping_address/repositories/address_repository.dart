import 'package:ecommerce_app/features/shipping_address/models/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
    return const [
      Address(
        id: '1',
        label: 'Home',
        fullAddress: 'Jl. Madura 123',
        city: 'Blitar',
        state: 'BLT',
        zipcode: '10001',
        isDefault: true,
        type: AddressType.home,
      ),
      Address(
        id: '2',
        label: 'Office',
        fullAddress: 'Jl. Kesamben 123',
        city: 'Blitar',
        state: 'BLT',
        zipcode: '10002',
        type: AddressType.office,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (address) => address.isDefault,
      orElse: () => getAddresses().first,
    );
  }
}
