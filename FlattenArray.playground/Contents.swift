//: Playground - noun: a place where people can play

// A method to flatten an array when it consists of nested arrays in nested arrays in nested arrays!

import UIKit

let nestedArray: [Any] = [1,[2,[3,4,[5,6,[7]]]]]

func flattenArray(nestedArray: [Any]) -> [Int] {
  
  var myFlattenedArray = [Int]()
  
  for element in nestedArray {
//    print("Element:", element)
    if element is Int {
      myFlattenedArray.append(element as! Int)
    } else if element is [Any] {
      
      let recursionResult = flattenArray(nestedArray: element as! [Any])
      for num in recursionResult {
        myFlattenedArray.append(num)
      }
    }
  }
  return myFlattenedArray
}

let result = flattenArray(nestedArray: [1,[2,[3,4,[5,6,[7]]]]])
print("Result:", result)



func flattenArray2(nestedArray: [Any]) -> [String] {
  
  var myFlattenedArray2 = [String]()
  
  for element in nestedArray {
//    print("Word:", element)
    if element is String {
      myFlattenedArray2.append(element as! String)
    } else if element is [Any] {
      
      let recursionResult = flattenArray2(nestedArray: element as! [Any])
      for word in recursionResult {
        myFlattenedArray2.append(word)
      }
    }
  }
  return myFlattenedArray2
}

let result2 = flattenArray2(nestedArray: ["Hi",["my",["name","is",["Jon","Kevin",["."]]]]])
print("Result:", result2)

var newSentence = ""
for word in result2 {

  newSentence.append(word)
  newSentence += " "
}
print(newSentence)


