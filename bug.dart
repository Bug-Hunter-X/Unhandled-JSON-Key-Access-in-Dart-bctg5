```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON string
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key
      final nonExistentValue = jsonResponse['nonExistentKey']; 
      print(nonExistentValue); // This line will throw an error if 'nonExistentKey' doesn't exist
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```