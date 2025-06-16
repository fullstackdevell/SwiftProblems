import Cocoa

// Write a Swift function that:

// - takes a single String parameter.
// - returns a [Character: Int] dictionary. The keys of this dictionary should be the unique characters from the input string, and the values should be the count of how many times each character appears.
// Important:
// - the counting should be case-insensitive (e.g., 'H' and 'h' both count towards 'h').
// - ignore spaces, punctuation, and any other non-alphanumeric characters. Only count letters and numbers.

func characterCounter(inputString: String) -> [Character: Int] {
    var characters = [Character: Int]()
    
    for character in inputString {
        if character.isLetter || character.isNumber {
            var lowerCased: String = character.lowercased()
            var backToCharacter: Character = lowerCased.first!
            characters[backToCharacter, default: 0] += 1
        }
    }
    return characters
}

    print("--- Character Counter Tests ---")

    // Example 1:
    let test1 = "Hello World"
    print("Input: '\(test1)'")
    print("Counts: \(characterCounter(inputString: test1))")
    // Expected: ["h": 1, "e": 1, "l": 3, "o": 2, "w": 1, "r": 1, "d": 1] (order may vary)
    print("\n")

    // Example 2:
    let test2 = "Swift Language"
    print("Input: '\(test2)'")
    print("Counts: \(characterCounter(inputString: test2))")
    // Expected: ["s": 1, "w": 1, "i": 1, "f": 1, "t": 1, "l": 2, "a": 2, "n": 1, "g": 1, "u": 1, "e": 1] (order may vary)
    print("\n")

    // Additional test for mixed case and numbers:
    let test4 = "Coding Is Fun123!"
    print("Input: '\(test4)'")
    print("Counts: \(characterCounter(inputString: test4))")
    // Expected: ["c":1, "o":2, "d":1, "i":2, "n":2, "g":1, "s":1, "f":1, "u":1, "1":1, "2":1, "3":1] (order may vary)
    print("\n")

    // Test with empty string:
    let test5 = ""
    print("Input: '\(test5)'")
    print("Counts: \(characterCounter(inputString: test5))")
    // Expected: [:] (an empty dictionary)
    print("\n")

    // Test with only non-alphanumeric:
    let test6 = "!!!???"
    print("Input: '\(test6)'")
    print("Counts: \(characterCounter(inputString: test6))")
    // Expected: [:] (an empty dictionary)
    print("\n")
