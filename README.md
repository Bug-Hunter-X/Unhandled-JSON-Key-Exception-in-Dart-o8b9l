# Unhandled JSON Key Exception in Dart

This repository demonstrates a common error in Dart when handling JSON responses from APIs.  The `bug.dart` file shows code that fails if the expected key is missing from the JSON data.  The `bugSolution.dart` file shows the corrected code handling the exception.

**Problem:**
The original code assumes that the JSON response will always contain the key `someKey`. If the key is missing, an exception is thrown, which the application might not properly handle.

**Solution:**
The solution adds checks to ensure the key exists before attempting to access it, preventing unexpected exceptions.  It provides more robust error handling.