import Cocoa

//Write a Swift function that:

// - takes a single String parameter.
// - returns a Bool indicating whether the string is a palindrome. (A palindrome reads the same forwards and backwards, ignoring case).

func palindromeChecker(palindrome: String) -> Bool {
    var cleanedString = ""
    for character in palindrome {
        if character.isLetter || character.isNumber {
            cleanedString.append(character)
            print(cleanedString)
        }
    }
    var lowerCleaned = cleanedString.lowercased()
    if lowerCleaned == String(lowerCleaned.reversed()) {
        return true
    } else {
        return false
    }
}

// --- TEST YOUR FUNCTION HERE (OUTSIDE the function definition) ---

print("--- Palindrome Checker Tests ---")
print("'madam' is palindrome: \(palindromeChecker(palindrome: "madam"))") // Expected: true
print("'racecar' is palindrome: \(palindromeChecker(palindrome: "racecar"))") // Expected: true
print("'apple' is palindrome: \(palindromeChecker(palindrome: "apple"))") // Expected: false
print("'Madam' is palindrome: \(palindromeChecker(palindrome: "Madam"))") // Expected: true
print("'A man, a plan, a canal: Panama' is palindrome: \(palindromeChecker(palindrome: "A man, a plan, a canal: Panama"))") // Expected: true
print("'Hello World' is palindrome: \(palindromeChecker(palindrome: "Hello World"))") // Expected: false
print("'12321' is palindrome: \(palindromeChecker(palindrome: "12321"))") // Expected: true
print("'No lemon, no melon' is palindrome: \(palindromeChecker(palindrome: "No lemon, no melon"))") // Expected: true
