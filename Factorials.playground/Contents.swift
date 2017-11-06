//: Playground - noun: a place where people can play

import UIKit

// Factorials: multiplying to the previous number

func factorialOfValue(value: UInt) -> UInt {
  
  if value == 0 {
    return 1
  }
  
  var product: UInt = 1
  for i in 1...value {
//    product = product * i
    product *= i
  }
  
  return product
}

print(factorialOfValue(value: 6))

// Recursive way

func recursiveFactorialOfValue(value: UInt) -> UInt {
  
  if value == 0 {
    return 1
  }
  
  return value * recursiveFactorialOfValue(value: value - 1)
}

print(recursiveFactorialOfValue(value: 6))
