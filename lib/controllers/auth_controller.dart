import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final _storage = GetStorage();

  final RxBool _isFirstTime = true.obs;
  final RxBool _isLoggedIn = true.obs;
  final Rx<User?> _user = Rx<User?>(null);
  final RxBool _isLoading = false.obs;
  final Rx<Map<String, dynamic>?> _userDocument = Rx<Map<String, dynamic>?>(
    null,
  );

  bool get isFirstTime => _isFirstTime.value;
  bool get isLoggedIn => _isLoggedIn.value;
  User? get user => _user.value;
  bool get isLoading => _isLoading.value;
  String? get userEmail => _user.value?.email;
  String? get userDisplayName => _user.value?.displayName;
  Map<String, dynamic>? get userDocument => _userDocument.value;
  String? get userName =>
      _userDocument.value?['name'] ?? _user.value?.displayName;
  String? get userPhone => _userDocument.value?['phoneNumber'];

  @override
  void onInit() {
    super.onInit();
    _loadInitialState();
  }

  void _loadInitialState() {
    _isFirstTime.value = _storage.read('isFirstTime') ?? true;
    _isLoggedIn.value = _storage.read('isLoggedIn') ?? false;
  }

  void setFirstTimeDone() {
    _isFirstTime.value = false;
    _storage.write('isFirstTime', false);
  }

  void login() {
    _isLoggedIn.value = true;
    _storage.write('isLoggedIn', true);
  }

  void logout() {
    _isLoggedIn.value = false;
    _storage.write('isLoggedIn', false);
  }
}
