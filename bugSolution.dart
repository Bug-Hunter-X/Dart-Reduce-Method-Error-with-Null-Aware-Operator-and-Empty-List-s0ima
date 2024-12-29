```dart
List<int?>? nullableNumbers = [];
int? sum2 = nullableNumbers?.isEmpty ?? true ? 0 : nullableNumbers?.reduce((a, b) => a! + b!); 
print(sum2); // Output: 0

//More robust solution handling potential null values within the list
List<int?>? numbersWithNulls = [1, null, 3];
int sum3 = numbersWithNulls?.fold(0, (sum, element) => sum + (element ?? 0)) ?? 0;
print(sum3); //Output 4
```