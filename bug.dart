```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Here's where the error can occur: jsonData might not have the expected structure
      // leading to an exception if you try to access a non-existent key.
      final value = jsonData['someKey']; //Error prone line
       print(value);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately
    // Consider rethrowing a more user-friendly exception
  }
}
```