import Cocoa

//Write a Swift function that:

// - takes an array of integers ([Int]) as its single parameter.
// - returns a new array of integers ([Int]).
// - the new array should only contain even numbers from the input array.
// - the numbers in the new array should be sorted in ascending order.

func evenNumbers(arrayOfIntegers: [Int]) -> [Int] {
    var evenArr = [Int]()
    for arrayOfInteger in arrayOfIntegers {
        if arrayOfInteger % 2 == 0 {
            evenArr.append(arrayOfInteger)
        }
    }
    evenArr.sort()
    return evenArr
}

print("--- Filter and Sort Even Numbers Tests ---")

// Test Case 1: Basic mix of odd and even numbers
let test1 = [1, 5, 2, 8, 3, 4, 10]
print("Input: \(test1)")
print("Result: \(evenNumbers(arrayOfIntegers: test1))") // Expected: [2, 4, 8, 10]
print("\n")

// Test Case 2: All odd numbers
let test2 = [9, 7, 5, 3, 1]
print("Input: \(test2)")
print("Result: \(evenNumbers(arrayOfIntegers: test2))") // Expected: []
print("\n")

// Test Case 3: All even numbers (already sorted)
let test3 = [6, 4, 2, 0]
print("Input: \(test3)")
print("Result: \(evenNumbers(arrayOfIntegers: test3))") // Expected: [0, 2, 4, 6]
print("\n")

// Test Case 4: Negative numbers and zero
let test4 = [-2, -5, 0, 8, 3]
print("Input: \(test4)")
print("Result: \(evenNumbers(arrayOfIntegers: test4))") // Expected: [-2, 0, 8]
print("\n")

// Test Case 5: Empty array
let test5: [Int] = []
print("Input: \(test5)")
print("Result: \(evenNumbers(arrayOfIntegers: test5))") // Expected: []
print("\n")

// Test Case 6: Duplicate numbers
let test6 = [1, 2, 2, 3, 4, 4, 5]
print("Input: \(test6)")
print("Result: \(evenNumbers(arrayOfIntegers: test6))") // Expected: [2, 2, 4, 4]
print("\n")
