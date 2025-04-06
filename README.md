<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Cach Data HTTP Hive

[English](#english) | [Deutsch](#deutsch) | [فارسی](#persian)

<a name="english"></a>
## English

A Flutter package for efficient data caching and HTTP request handling using Hive and GetX.

### Features

- Efficient data caching using Hive
- HTTP request handling with error management
- Reactive state management using GetX
- Force refresh option to bypass cache
- Easy to integrate and use

### Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  cach_data_http_hive: ^0.0.1
```

### Usage

```dart
// Initialize the cache manager
final cacheManager = CacheManager();

// Create data service instance
final dataService = DataService(cacheManager);

// Fetch data with caching
await dataService.fetchData('https://api.example.com/data');

// Force refresh data (bypass cache)
await dataService.fetchData('https://api.example.com/data', forceRefresh: true);

// Access the data
final data = dataService.data.value;

// Check loading state
final isLoading = dataService.isLoading.value;

// Check for errors
final error = dataService.error.value;
```

<a name="deutsch"></a>
## Deutsch

Ein Flutter-Paket für effizientes Daten-Caching und HTTP-Anfragenbehandlung mit Hive und GetX.

### Funktionen

- Effizientes Daten-Caching mit Hive
- HTTP-Anfragenbehandlung mit Fehlermanagement
- Reaktives Zustandsmanagement mit GetX
- Erzwungene Aktualisierungsoption zum Umgehen des Caches
- Einfach zu integrieren und zu verwenden

### Erste Schritte

Fügen Sie dies zur `pubspec.yaml`-Datei Ihres Pakets hinzu:

```yaml
dependencies:
  cach_data_http_hive: ^0.0.1
```

### Verwendung

```dart
// Cache-Manager initialisieren
final cacheManager = CacheManager();

// Datenservice-Instanz erstellen
final dataService = DataService(cacheManager);

// Daten mit Caching abrufen
await dataService.fetchData('https://api.example.com/data');

// Daten zwangsweise aktualisieren (Cache umgehen)
await dataService.fetchData('https://api.example.com/data', forceRefresh: true);

// Auf Daten zugreifen
final data = dataService.data.value;

// Ladezustand prüfen
final isLoading = dataService.isLoading.value;

// Fehler prüfen
final error = dataService.error.value;
```

<a name="persian"></a>
## فارسی

یک پکیج فلاتر برای ذخیره‌سازی موقت کارآمد داده‌ها و مدیریت درخواست‌های HTTP با استفاده از Hive و GetX.

### ویژگی‌ها

- ذخیره‌سازی موقت کارآمد داده‌ها با استفاده از Hive
- مدیریت درخواست‌های HTTP با کنترل خطا
- مدیریت حالت واکنش‌گرا با استفاده از GetX
- گزینه به‌روزرسانی اجباری برای نادیده گرفتن حافظه موقت
- ساده برای یکپارچه‌سازی و استفاده

### شروع به کار

این خط را به فایل `pubspec.yaml` پروژه خود اضافه کنید:

```yaml
dependencies:
  cach_data_http_hive: ^0.0.1
```

### نحوه استفاده

```dart
// راه‌اندازی مدیریت حافظه موقت
final cacheManager = CacheManager();

// ایجاد نمونه سرویس داده
final dataService = DataService(cacheManager);

// دریافت داده‌ها با ذخیره‌سازی موقت
await dataService.fetchData('https://api.example.com/data');

// به‌روزرسانی اجباری داده‌ها (نادیده گرفتن حافظه موقت)
await dataService.fetchData('https://api.example.com/data', forceRefresh: true);

// دسترسی به داده‌ها
final data = dataService.data.value;

// بررسی وضعیت بارگذاری
final isLoading = dataService.isLoading.value;

// بررسی خطاها
final error = dataService.error.value;
```

## Additional Information

For bugs and feature requests, please create an issue on the [GitHub repository](https://github.com/smilingmajid/cach_data_http_hive).

## License

This project is licensed under the MIT License - see the LICENSE file for details.
