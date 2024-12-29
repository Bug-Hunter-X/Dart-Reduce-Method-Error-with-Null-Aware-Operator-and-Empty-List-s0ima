```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.reduce((a, b) => a + b);
print(sum); // Output: 15

//This works correctly, but this error occurs when using a null-aware operator and an empty list.
List<int?>? nullableNumbers = [];
int? sum2 = nullableNumbers?.reduce((a, b) => a! + b!); //Error occurs here
print(sum2); //Throws an error because nullableNumbers is empty
```