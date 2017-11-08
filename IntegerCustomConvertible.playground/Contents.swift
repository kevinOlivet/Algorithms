//: Playground - noun: a place where people can play

// Using ExpressibleByIntegerLiteral, ExpressibleByStringLiteral and ExpressibleByFloatLiteral

import UIKit

// ExpressibleByIntegerLiteral
struct NestInt: ExpressibleByIntegerLiteral {
  var eggCount: Int = 0
  init(integerLiteral eggCount: Int) {
    self.eggCount = eggCount
  }
}

let newNest: NestInt = 6
print("There are \(newNest.eggCount) eggs in the nest")


// ExpressibleByStringLiteral
struct NestString: ExpressibleByStringLiteral {
  var eggCount: String = ""
  init(stringLiteral eggCount: String) {
    self.eggCount = eggCount
    print("There are \(self.eggCount) eggs in the nest")
  }
}

let myStringNest: NestString = "four"


// ExpressibleByFloatLiteral
struct Thermometer: ExpressibleByFloatLiteral {
  var temperature: Double
  init(floatLiteral temperature: Double) {
    self.temperature = temperature
  }
}

let thermometer: Thermometer = 56.8
print(thermometer)
