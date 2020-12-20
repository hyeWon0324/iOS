import UIKit

//값이 있을지 없을지 모름

var carName : String? = "Tesla"


var carName2 : String?
carName2 = nil
carName2 = "떙크"

//아주 간단한 과제
//1. 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입 String?)
//2. let num = Int("10") -> 타입은 뭘까요?

var favoriteMovieStar: String? = nil
let num = Int("10")

//고급 기능 4가지

//1. Forced unwrapping        --> 강제로 언박싱. 억지로
//2. Optional binding (if let)--> 부드럽게 박스를 까보자 1
//3. Optional binding (guard) --> 부드럽게 박스를 까보자 2
//4. Nil coalescing --> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자



//1. Forced unwrapping        --> 강제로 언박싱. 억지로
print(carName)
print(carName!)  //박스를 다 버리고 값만 가져왔다

//carName = nil
//print(carName!)   //아무것도 없는데 억지로 까려고 하므로 에러



//2. Optional binding (if let)--> 부드럽게 박스를 까보자 1
//박스를 부드럽게 까보기

carName = nil
if let unwrappedCarName = carName {
    print(unwrappedCarName)
}else{
    print("CarName 없다")
}

//--> if let ... else 로 구분하여 nil이어도 에러발생하지 않음



func printParsedInt(from: String){
    if let parsedInt = Int(from){
        print(parsedInt)
    }else {
        print("Int 로 컨버팅 안된다 짜샤..?")
    }
}
printParsedInt(from: "100")    //if let으로 들어감
printParsedInt(from: "Hello ") //else



//3. Optional binding (guard) --> 부드럽게 박스를 까보자 2
func printParsedInt2(from: String){
    guard let parsedInt = Int(from) else {
        print("Int 로 컨버팅 안된다 짜샤..?")
        //Cyclomatic Complexity 함수 복잡도 재는 것
        //--> guard를 쓰면 복잡도를 줄일 수 있음
        return
    }
    print(parsedInt)
}

printParsedInt2(from: "100")    //if let으로 들어감
printParsedInt2(from: "Hello ") //else

//4. Nil coalescing --> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

let myCarName: String = carName ?? "모델 S" // carName 이 nil 이면 ""값을 디폴트로 넣어준다

carName = "model 3"

let myCarName2: String = carName ?? "모델 S"


//---도전 과제
// 1. 최애 음식이름을 담는 변수를 작성하시고 (String?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

var favoriteFood: String? //= "초코케익"

if let foodName = favoriteFood{
    print(foodName)
}else{
    print("값이 없음")
}

func printFavFood(nickname: String?){
    guard let name = nickname else {
        print("이름값 없음")
        return
    }
    print(name)
}

printFavFood(nickname: "dhdhd")
