//: Playground - noun: a place where people can play
// A useful extension on Array for shuffling.

import UIKit

extension Array {
  mutating func shuffle () {
    for i in (0..<self.count).reversed() {
      let ix1 = i
      let ix2 = Int(arc4random_uniform(UInt32(i+1)))
      (self[ix1], self[ix2]) = (self[ix2], self[ix1])
    }
  }
}

var array = [1,2,3,4,5,6,7,8,9,10]
array.shuffle()
print(array)

