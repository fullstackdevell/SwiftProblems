import Cocoa

// You are given an array of names
// - remove any duplicate names from the array.
// - count how many unique names are left.
// - print the final count and the unique names (order doesn't matter for printing the names).

func uniqueNames() {

    var names = ["John", "Paul", "George", "Ringo", "John", "George"]
    print("original array \(names)")

    let uniqueNames = Set(names)
    print("unique names: \(uniqueNames)")

    let numberOfUniqueNames = uniqueNames.count
    print("there are \(numberOfUniqueNames) unique names.")
}

uniqueNames()
