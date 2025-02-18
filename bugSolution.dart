```dart
import 'dart:async';

Future<void> main() async {
  try {
    final result = await someAsyncOperation();
    print('Operation successful: $result');
  } on TimeoutException catch (e) {
    print('Timeout occurred: ${e.message}');
  } on Exception catch (e) {
    print('An error occurred: ${e.toString()}');
  } catch (e) {
    //Handle any other unexpected errors
    print('An unexpected error occurred: $e');
  }
}

Future<String> someAsyncOperation() {
  //Simulate some asynchronous work that might take more than 1 second or throw an exception
  return Future.delayed(Duration(seconds: 2), () {
    //Simulate a potential error condition
    if (DateTime.now().millisecond % 2 == 0) {
      throw Exception('Simulated error');
    }
    return 'Successful result';
  });
}
```