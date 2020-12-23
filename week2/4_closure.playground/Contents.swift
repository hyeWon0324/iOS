import UIKit

//이름 없는 메소드 closure

//1.
var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}

//2.
var multiplyClosure2: (Int, Int) -> Int = { a, b  in
    return a * b
}

//3.
var multiplyClosure3: (Int, Int) -> Int = { return $0 * $1
}

//4.
var multiplyClosure4: (Int, Int) -> Int = { $0 * $1 }



let result = multiplyClosure(4, 2)

let result2 = multiplyClosure2(4, 2)

let result3 = multiplyClosure3(4, 2)

let result4 = multiplyClosure4(4, 2)

func operateTwoNum(a: Int, b:Int, operation: (Int, Int) -> Int ) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 15, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 32, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}

//codeForEveryoneJoonwon+02@gmail.com

let voidClosure: () -> Void = {
    print("ios 개발자 ㅈ, 클로져 ㅅ ")
}
voidClosure()

//Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count

