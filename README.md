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

# Cach Data

A Flutter package for efficient data caching and HTTP request handling using Hive and GetX.

## Features

- Efficient data caching using Hive
- HTTP request handling with error management
- Reactive state management using GetX
- Force refresh option to bypass cache
- Easy to integrate and use

## Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  cach_data: ^0.0.1
```

## Usage

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

## Additional information

For bugs and feature requests, please create an issue on the [GitHub repository](https://github.com/smilingmajid/cach_data_http_hive).

## License

This project is licensed under the MIT License - see the LICENSE file for details.
