//: Playground - noun: a place where people can play

import UIKit

// Reversing every other word in a sentence.
// Removing the vowels in a String using an extension

// LBTA method

var sampleSentence = "Lets start today by completing a very interesting challenge"

func reverseWordInSentence(sentence: String) -> String {
  
  let allWords = sampleSentence.components(separatedBy: " ")
  var newSentence = ""
  
  for (index, word) in allWords.enumerated() {
//    let word = allWords[index]
    if newSentence != "" {
      newSentence += " "
    }
    
    if index % 2 == 1 {
      let reverseWord = String(word.characters.reversed())
      newSentence += reverseWord.stringByRemovingVowels()
    } else {
      newSentence += word.stringByRemovingVowels()
    }
  }
  
  return newSentence
}

extension String {
  func stringByRemovingVowels() -> String {
    var newWord = self
    for vowel in ["a", "e", "i", "o", "u"] {
      newWord = newWord.replacingOccurrences(of: vowel, with: "")
    }
    return newWord
  }
}

print(reverseWordInSentence(sentence: sampleSentence))


