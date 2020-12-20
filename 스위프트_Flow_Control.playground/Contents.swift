import UIKit
import Foundation


//var str = "Hello, playground"
print("---while")
//while 조건{
// code....
//}

var i = 0
//while i < 10 {
//   print(i)
//
////    if i == 5 {
////        break
////    }
//    i += 1
////
//}

print("---repeat")
i = 10
//repeat {
//    print(i)
//    i +=  1
//
//}while i < 10

//while
//조건 > 코드 수행 > 조건 > 코드 수행
//
//repeat while
//코드 수행 > 조건 > 코드 수행 > 조건


// ----For loop
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
//for i in halfClosedRange{
//    print("--> \(i)")
//    sum += i
//}
//
//print("--->total sum: \(sum)")
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let name = "Jason"
//for i in closedRange{
//    print("--> name: \(name) ")
//}
//
//for i in closedRange{
//    if i % 2 == 0 {
//        print("-->짝수: \(i)")
//    }
//}
//
//for i in closedRange where i % 2 == 0 {
//    print("-->짝수: \(i)")
//}
//
//for i in closedRange{
//    if i == 3{
//        continue
//    }
//    print("--->\(i)")
//}
//
//for i in closedRange {
//    for j in closedRange {
//        print("gugu -> \(i) * \(j) = \(i * j)")
//    }
//}

// switch

//let num = 10
//
//switch num {
//case 0:
//        print("0")
//case 0...10:
//        print("0 10 사이")
//case 10:
//    print("안 들어옴")
//default:
//        print("나머지")
//}
//
//let pet = "bird"
//switch pet {
//case "dog", "cat", "bird":
//    print("집동물이네요?")
//default:
//    print("잘 모르겠습니다")
//}

let num = 20
switch num {
case _ where num % 2 == 0:
    print("--> 짝수")
default:
    print("--> 홀수")
}

let coordinate = (x: 10, y: 10)

switch coordinate {
case (0, 0):
    print("-->원점이네요")
//case (_, 0):
//    print("--> y 가 0이고 x는 아무거나 ")
case (let x, 0):
    print("--> x축 이네요, x:\(x)")
case (0, let y):
    print("--> y축 이네요, y:\(y)")
case (let x, let y) where x == y:
    print("--> 좌표 x랑 y가 같음, x,y = \(x), \(y)")
case (let x, let y) :
    print("--> 좌표 어딘가, x,y = \(x), \(y)")
//default:
//    print("-->좌표 어딘가")
}

func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}
printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)

func printTotalPricewithDefaultValue(price:Int = 1500, count:Int){
    print("TotalPrice  : \(price * count)")
}

printTotalPricewithDefaultValue(count: 5)
printTotalPricewithDefaultValue(count: 10)

printTotalPricewithDefaultValue(price: 2000, count: 1)

func totalPrice(price:Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice

let coordinates = (1,7)

let x = coordinates.0
