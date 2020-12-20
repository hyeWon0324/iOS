import UIKit

//1. 성, 이름을 받아서 fullname 을 출력하는 함수 만들기
func printFullName(firstName: String, lastName: String){
    print("fullname is \(firstName) \(lastName)")
}
//printFullName(firstName: "Hyewon", lastName: "Park")

//2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 을 출력하는 함수 만들기
func printFullName(_ firstName: String, _ lastName: String){
    print("fullname is \(firstName) \(lastName)")
}
//printFullName("Hyewon", "Park")

//3. 성, 이름을 받아서 fullname return 하는 함수 만들기
func fullName(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}

let name = fullName(firstName: "Hyewon", lastName: "Park")

//name

//func functionName(externalName param: ParamType) -> ReturnType {
//    //
//
//    return returnValue
//}


//오버로드
func printTotalPrice(price:Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice(price:Double, count: Double){
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Double, 갯수: Double){
    print("Total Price: \(가격 * 갯수)")
}

//In-out parameter
func incrementAndPrint(_ value:Int){
   // value += 1      //parameter가 복사되고 consonant로 이용되므로 상수값을 변경할 수 없다고 에러뜸
    print(value)
}

var value = 3
func incrementAndPrint(_ value: inout Int){
    value += 1              //inout 으로 쓰면 값을 변경 가능
    print(value)
}

incrementAndPrint(&value)

// ----- Function as a param
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int ) -> Int {
    return a - b
}

var function = add
function(4,2)
function = subtract
function(4,2)

func printResult(_ function:(Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5)

printResult(subtract, 10, 5)
//var books:[String]
//books = [String]()
//
////var pages = [] //
//
//var list:[Int] = []
//
//var rows:Array<Float> = [Float]()
//
//var tapes:[String] = Array()

//let testInteger = Int("456")
//
//testInteger == 456
//
//testInteger == Optional(456)
//
//testInteger! == 456
//
//testInteger! == Optional(456)
