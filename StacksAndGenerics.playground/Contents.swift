//: Playground - noun: a place where people can play

// Practicing making FIFO stacks using Nodes, and making them generic

import UIKit

class Node<T> {
  let value: T
  var next: Node?
  init(value: T) {
    self.value = value
  }
}

class Stack<T> {
  var top: Node<T>?
  
  func push(value: T) {
    let oldTop = top
    top = Node(value: value)
    top?.next = oldTop
  }
  
  func pop() -> T? {
    let currentTop = top
    top = top?.next
    return currentTop?.value
  }
  
  func peek() -> T? {
    return top?.value
  }
}

struct User {
  let name: String
  let userName: String
}

let me = User(name: "Kevin", userName: "@kevin.olivet")
let you = User(name: "You", userName: "@you.you")

let userStack = Stack<User>()
userStack.push(value: me)
userStack.push(value: you)

let firstUserPop = userStack.pop()
print(firstUserPop?.name ?? "")

let stack = Stack<Int>()
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)

stack.peek()
let firstPop = stack.pop()
stack.peek()
let secondPop = stack.pop()
let thirdPop = stack.pop()
let finalPop = stack.pop()
