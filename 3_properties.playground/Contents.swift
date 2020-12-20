import UIKit


struct Person {
    //stored property
    var firstName: String{
        willSet{
            //값이 바뀌기 직전에 실행된다
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet{
            //바뀐 경우 값을 확인할 수 있다
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        //나중에 접근했을때
        //cost 가 크지 않은 경우
        //optimizing
        
        if fullName == "Jay Park"{
            return true
        }else {
            return false
        }
    }()
    //computed property
    var fullName: String {
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            //new Value : "Jay Park"
            //string 으로 들어온 새 값 newValue를 한 칸 앞뒤로 firstName 과 lastName 으로 할당
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last{
                self.lastName = lastName
            }
        }
    }
    ///---> instance Property
    //property 대신에 메소드로 써도 결과는 같을 수 있다
    //property 호출시(저장된) 값을 하나 반환한다
    //method: 호출시 어떤 작업을 한다
    //setter 가 필요한 경우는 computed Property 를 쓰는게 나음
    //setter 가 필요없는 경우 --> 계산이 많이 필요하가?/ db access 나 FIle io 가 필요한 경우 --> method
    //setter 가 필요없어도--> 계산이 많이 필요없고 db access 나 FIle io 가 필요한 경우가 아니라면 --> computed property
    
    
    //type property
    //type property 생성된 instance 상관없이 class type 상관없이, type 자체의 속성을 정하고 싶을 때 사용
    //객체와 상관없이 쓰일 property

    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Bak")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"

person.firstName
person.lastName

person.fullName  //get Name

person.fullName = "HYEWON PARK"
person.firstName
person.lastName

Person.isAlien

person.fullName = "Jay Park"

person.isPopular
