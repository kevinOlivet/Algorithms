 //: Playground - noun: a place where people can play
 
 // Practicing a way to count palindromes in a String
 
 import UIKit
 
 let sentence = "madam anna kayak notapalindrome anna Civic racecar anna Civic"
 
 fileprivate func isPalindrome(word: String) -> Bool {
  let characters = Array(word.lowercased())
  var currentIndex = 0
  
  while currentIndex < characters.count / 2 {
    if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
      return false
    }
    currentIndex += 1
  }
  return true
 }
 
 func allPalindromeCounts(sentence: String) -> [String: Int]{
  var counts = [String:Int]()
  let words = sentence.components(separatedBy: " ")
  words.forEach { (word) in
    if isPalindrome(word: word) {
      let count = counts[word] ?? 0
      counts[word] = count + 1
    }
  }
  return counts
 }
 
 let counts = allPalindromeCounts(sentence: sentence)
 print("Counts:", counts)
 
 
