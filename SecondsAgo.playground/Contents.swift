//: Playground - noun: a place where people can play

import UIKit

let now = Date()
let pastDate = Date(timeIntervalSinceNow: -60 * 60 * 24 * 7)

extension Date {
  func timeAgoDisplay() -> String {
    let secondsAgo = Int(Date().timeIntervalSince(self))
    
    let minute = 60
    let hour = minute * 60
    let day = hour * 24
    let week = day * 7
    let month = week * 30
    
    if secondsAgo < minute {
      return "\(secondsAgo) seconds ago"
    } else if secondsAgo < hour {
      return "\(secondsAgo / minute) minutes ago"
    } else if secondsAgo < day {
      return "\(secondsAgo / hour) hours ago"
    } else if secondsAgo < week {
      return "\(secondsAgo / day) days ago"
    } else if secondsAgo < month {
      return "\(secondsAgo / week) weeks ago"
    }
    return "\(secondsAgo / month) month ago"
  }
  
}

pastDate.timeAgoDisplay()
