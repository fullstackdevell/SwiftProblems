import Cocoa

// Write a Swift function that:

// - takes a single Double parameter representing a temperature in Fahrenheit.
// - calculates the equivalent temperature in Celsius.
// - returns the Celsius temperature as a Double.
// hint: the formula for converting Fahrenheit (F) to Celsius (C) is
// C=(F−32)×5/9

func tempConverter(tempFahrenheit: Double) -> Double {
    var tempCelsius: Double = (tempFahrenheit - 32) * 5 / 9
    return tempCelsius
}

// test

let fahrenheitTest: Double = 68.0
let convertedCelsius = tempConverter(tempFahrenheit: fahrenheitTest)

print("Temperature in Fahrenheit: \(fahrenheitTest)°F, Temperature in Celsius: \(convertedCelsius)°C")
