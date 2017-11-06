//: Playground - noun: a place where people can play

// Practice writing functions with closures. Useful for passing results from API calls and passing CoreData private contexts

import UIKit

var list = [1,2,3,4,5,6,7,8,9]

func filterGreaterThanValue(value: Int, numbers:[Int]) -> [Int] {
  var filteredSetOfNumbers = [Int]()
  for num in numbers {
    if num > value {
      filteredSetOfNumbers.append(num)
    }
  }
  return filteredSetOfNumbers
}

let filteredList = filterGreaterThanValue(value: 5, numbers: list)
print(filteredList)

//--------------
func filterWithClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
  var filteredClosureNumbers = [Int]()
  for num in numbers {
    if closure(num) {
      filteredClosureNumbers.append(num)
    }
  }
  return filteredClosureNumbers
}


var list2 = [1,2,3,4,5,6,7,8,9]

let filteredClosure = filterWithClosure(closure: { (num) -> Bool in
  return num < 7
}, numbers: list2)
print(filteredClosure)

func passingClosure(value: Int) -> Bool {
  return value < 7
}
let filteredClosure2 = filterWithClosure(closure: passingClosure, numbers: list2)
print(filteredClosure2)
