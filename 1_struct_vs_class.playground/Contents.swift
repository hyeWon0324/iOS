import UIKit

//Struct 쓰는 경우
//Value types : Copy , Stack . 빠르다. 효율적이다.
//1. 두 object를 ‘같다, 다르다’ 로 비교해야하는 경우
//2. Copy 된 각 객체들이 독립적인 상태를 가져야하는 경우. 다른 상태로 관리되어야할 때
//3. 코드에서 오브젝트의 데이터를 여러 스레드 걸쳐 사용할 경우
//
//Class 쓰는 경우
//Reference Type : Share, Heap. 느리다
//1. 두 object 의 인스턴스 자체가 같음을 확인해야 할 때
//2. 하나의 객체가 필요하고, 여러 대상에 의해 접근되고 변경이 필요한 경우


struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass{
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName

personClass1 = personClass2
personClass1.firstName
personClass2.firstName

