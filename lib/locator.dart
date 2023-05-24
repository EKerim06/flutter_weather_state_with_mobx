import 'package:get_it/get_it.dart';
import 'package:hava_durumu/data/service/local_storage_service.dart';
import 'package:hava_durumu/data/service/shared_service_pref.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<LocalStorageService>(SharedPreferencesService());
}
