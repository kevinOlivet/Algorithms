//: Playground - noun: a place where people can play

import UIKit

func findGreatestValueInList(list: [Int]) -> Int? {
  if list.count == 0 {
    return nil
  }
  
  var greatestValue = list.first!
  
  for number in list {
    if number > greatestValue {
      greatestValue = number
    }
  }
  return greatestValue
}

let list = [-1,-5, 0, 6, 7]
findGreatestValueInList(list: list)

// Or easiest way:
list.max()
