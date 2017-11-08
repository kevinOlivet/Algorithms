//: Playground - noun: a place where people can play

import UIKit

let names = ["Kevin", "Kevin", "Bob", "Sally", "Bob", "Fred"]

// LBTA method

func mostCommonNameInArray(array: [String]) -> String {
  
  var nameCountDictionary = [String:Int]()
  
  for name in array {
    if let count = nameCountDictionary[name] {
      nameCountDictionary[name] = count + 1
    } else {
      nameCountDictionary[name] = 1
    }
  }
  // Or this way:
//  array.forEach { (word) in
//    let count = nameCountDictionary[word] ?? 0
//    nameCountDictionary[word] = count + 1
//  }
  
  var mostCommonName = ""
  var mostCommonCount = 0
  
  for key in nameCountDictionary.keys {
    if mostCommonName == "" {
      mostCommonName = key
    } else {
      let count = nameCountDictionary[key]
      if count! > nameCountDictionary[mostCommonName]! {
        mostCommonName = key
        mostCommonCount = count!
      }
    }
    print("\(key): \(nameCountDictionary[key]!) times")
  }
  return "\(mostCommonName) occurs \(mostCommonCount) times"
}

let result = mostCommonNameInArray(array: names)
print(result)

// StackOverflow method

func mostFrequent(array: [String]) -> (value: String, count: Int) {
  var counts = [String: Int]()

  array.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }

  if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
    return (value, count)
  }

  // array was empty
  return ("Nothing", 0)
}

let result2 = mostFrequent(array: names)
print("\(result2.value) occurs \(result2.count) times")

