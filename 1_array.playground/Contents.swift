import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]

let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)

//evenNumbers2.append(10) --> error. let으로 썼기때문에

evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])


let isEmpty = evenNumbers.isEmpty

evenNumbers.count       //배열 길이

print(evenNumbers.first)

//evenNumbers = []
let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first{
    print("-->first tiem is: \(firstElement)")
}
  
evenNumbers.min()
evenNumbers.max()

var firstI = evenNumbers[0]
var secondI = evenNumbers[1]
var tenthI = evenNumbers[2]

//var twentieth = evenNumbers[19]

// ------>
let firstThree = evenNumbers[0...2]
evenNumbers

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)
evenNumbers

//evenNumbers.removeAll()//삭제
//evenNumbers = []       //삭제

evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

evenNumbers.swapAt(0, 1)
evenNumbers.swapAt(4, 0)

for num in evenNumbers {
    print(num)
}

for (index, num) in evenNumbers.enumerated(){
    print("idx: \(index), value: \(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
evenNumbers

let lastTwoRemoved = evenNumbers.dropLast(2)
evenNumbers

let firstThreeEven = evenNumbers.prefix(3)
firstThreeEven

let lastThreeEven = evenNumbers.suffix(3)
lastThreeEven

evenNumbers

