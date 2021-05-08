/*
    옵셔널(Optional)은 안정성을 문법으로 담보하는 기능
    옵셔널(Optional)은 값의 유무를 선택할 수 있는 기능
*/


/*
var myName: String? = "yagom"과 같은 표현
var myName: Optional<String> = "yagom"
print(myName)

myName = nil
print(myName)
*/

/* 옵셔널 열거형의로 정의되어 있다.
public enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
    public init(_ some: Wrapped){}
}
*/

/* 옵셔널이 열거형이기 때문에 switch 구문을 통해 값의 유무 확인
func checkOptionalValue(value optionalValue: Any?) {
    switch optionalValue{
        case .none:
            print("This Optional variable is nil")
        case .some(let value):
            print("Value is \(value)")
    }
}
var myName: String? = "yagom"
checkOptionalValue(value: myName)

myName = nil
checkOptionalValue(value:myName)
*/

/* switch를 통한 옵셔널 값의 확인
let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number{
        case .some(let value) where value < 0 :
            print("Negative Value! \(value)")
        case .some(let value) where value > 10 :
            print("Large Value! \(value)")

        case .some(let value):
            print("Value \(value)")
        case .none:
            print("nil")
    }
}
*/


/* 옵셔널 값의 강제 추출
var myName: String? = "yagom"

var yagom: String = myName!

//myName = nil
//yagom = myName!

if myName != nil{
    print("My name is \(myName!)")
} else {
    print("myName == nil")
}
*/

/* 옵셔널 바인딩을 통한 임시 상수 할당
var myName: String? = "yagom"

if let name = myName{
    print("My name is \(name)")
} else {
    print("myName == nil")
}

if var name = myName {
    name = "wizplan"
    print("My name is \(name)")
}else {
    print("myName == nil")
}
*/

/* 옵셔녈 바인딩을 사용한 여러 개의 옵셔널 값의 추출
var myName: String? = "yagom"
var yourName: String? = nil

if let name = myName, let friend = yourName{
    print("We are fried! \(name) & \(friend)")
}

yourName = "eric"

if let name = myName, let friend = yourName{
    print("We ar fried! \(name) & \(friend)")
}
*/

/* 암시적 추출 옵셔널의 사용
var myName: String! = "yagom"
print(myName)
myName = nil

if let name = myName{
    print("My name is \(name)")
} else {
    print("myName == nil")
}

//myName.isEmpty
*/