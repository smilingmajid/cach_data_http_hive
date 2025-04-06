import '../src/cach_manager.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class DataService extends GetxController {
  final CacheManager cacheManager;
  final RxBool isLoading = false.obs;
  final RxString error = ''.obs;
  final Rx<dynamic> data = Rx<dynamic>(null);

  DataService(this.cacheManager);

  Future<void> fetchData(String url, {bool forceRefresh = false}) async {
    isLoading.value = true;
    error.value = '';

    await cacheManager.init();

    if (!forceRefresh) {
      final cached = cacheManager.get(url);
      if (cached != null) {
        data.value = cached;
        isLoading.value = false;
        return;
      }
    }

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        data.value = response.body;
        await cacheManager.put(url, response.body);
      } else {
        error.value = 'Error fetching data: ${response.statusCode}';
      }
    } catch (e) {
      error.value = 'Error: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
