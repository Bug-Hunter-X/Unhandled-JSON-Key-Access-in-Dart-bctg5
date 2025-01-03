# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that doesn't exist in the JSON data.  This can lead to runtime exceptions and unexpected program behavior.  The provided solution showcases safe key access using the `containsKey` method. 

## Bug
The `bug.dart` file contains a function that fetches JSON data from an API.  It attempts to access a key ('nonExistentKey') that may or may not exist in the response. This directly leads to a runtime error when the key is missing. 

## Solution
The `bugSolution.dart` file demonstrates the corrected version.  Before accessing a key, it checks if the key exists using `containsKey`. This prevents the runtime error, making the code more robust and reliable.