import Foundation



//1) Ekrana 10 kez "Hello World" yazdır

func helloWorld() {
    for _ in 0..<10 {
        print("Hello World")
    }
}
helloWorld()
//2) 43 sayısına kadar olan Tek sayıları print et
func printOdds() {
    for i in 1...43 {
        if i % 2 != 0 {
            print(i)
        }
    }
}
printOdds()
//3)Dışarıdan alınan metnin soluna TR- ekleyip döndüren metod

func addTR(to text: String) -> String {
    var tr = "TR-"
    tr += text
    return tr
}
addTR(to: "Player")
//4 Dışarıdan girilen bir sayının rakamları toplamını bul. (431 = 8)
func addNumbers(_ number: Int) -> Int {
    var strNumber = String(number)
    var result = 0
    for num in strNumber {
        result += Int(String(num))!
    }
    return result
}
addNumbers(431)

//6) Dışarıdan girilen 3 sayıdan en büyüğünü bulan metod.
func findMax(number1: Int, number2: Int, number3: Int) -> Int {
    var arr = [number1, number2, number3]
    return arr.max()!
}
findMax(number1: 5, number2: 6, number3: 3)

//7) Çarpma işlemini kullanmadan dışarıdan girilen 2 sayının çarpımını bulan metod
func multiply(_ number1: inout Int, _ number2: inout Int) -> Int {
    var result = 0
    var isNegative = false
    if number2 < 0 && number1 < 0 {
        number2.negate()
        number1.negate()
    }
    else if number1 < 0 {
        number1.negate()
        isNegative = true
    } else if number2 < 0 {
        number2.negate()
        isNegative = true
    }
    for i in 0..<number2 {
        result += number1
    }
    return isNegative ? -result : result
}
var a = -5
var c = 4
multiply(&a, &c)
//8) Dışarıdan aldığı metnin ilk 3 harfini döndüren fonksiyon

func getFirstThreeLetter(text: String) -> String {
    guard text.count >= 3 else {
        return text
    }
    var result = ""
    for letter in text {
        if result.count == 3 {
            return result
        }
        result += String(letter)
        
    }
    return result
}
getFirstThreeLetter(text: "Alpsu")

// 9) Dışarıdan bir isim dizisi alıp isimleri tek tek print eden fonksiyon
func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}
printNames(names: ["Alp", "Ali", "Mustafa", "Burak", "Zerrin"])
// 10) Dışarıdan bir isim dizisi alan isim uzunluğu 4 den büyükse print eden fonksiyon
func printLongerThanFour(names: [String]) {
    for name in names {
        if name.count > 4 {
            print(name)
        }
    }
}

printLongerThanFour(names: ["Alp", "Ali", "Mustafa", "Burak", "Zerrin"])
// 11) Dışarıdan bir metin alan ve metinin içinde kaç adet 'e' harfi olduğunu söyleyen fonksiyon
func countE(text: String) -> Int {
    let result = text.filter { $0 == "e" }
    return result.count
}
countE(text: "Aeqdqdqqdeee")

//12) Dışarıdan bir metin alan ve aldığı harfin sadece ilk harfini büyük diğer harflerini küçük yazan bir fonksiyon
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
func uppercase(text: String) -> String {
    return text.capitalizingFirstLetter()
}
uppercase(text: "deneme")
