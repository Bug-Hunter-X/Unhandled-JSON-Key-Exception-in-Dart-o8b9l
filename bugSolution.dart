```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if the key exists before accessing it
      final value = jsonData.containsKey('someKey') ? jsonData['someKey'] : null; 
      // Handle the case where the key might be missing
       print(value ?? 'Key not found');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle error appropriately
  }
}
```