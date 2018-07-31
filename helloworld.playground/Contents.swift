//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

func sayHelloAgain(personName:String)->String{
    return "Hello again,"+personName+"!"
}
print(sayHelloAgain("Anna"))

func minMax(array:[Int])->(min:Int, max:Int){
    var curMin = array[0]
    var curMax = array[0]
    for val in array[1..<array.count]{
    if val < curMin{
        curMin = val
    }else if val > curMax{
        curMax = val
    }
    }
    return (curMin,curMax)
}
let bounds = minMax([8,-6,2,109,3,71])
print("min is \(bounds.min) and max is \(bounds.max)")

func arithmeticMean(numbers: Double...)->Double{
    var total:Double=0
    for number in numbers{
        total += number
    }
    return total/Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
arithmeticMean(3,8.25,18.75)

class Counter{
    var count = 0
    func increment(){
        count += 1
    }
    func increment(by amount:Int){
        count += amount
    }
    func reset(){
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)
counter.increment(by: 5)
print(counter.count)
counter.reset()
print(counter.count)

class SurveyQuestion{
    var text:String
    var response:String?
    init(text:String){
        self.text=text
    }
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text:"Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese."

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0,5.0))

extension Int{
    func repetitions(task:()->Void){
        for _ in 0..<self{
            task()
        }
    }
}

3.repetitions{
    print("Hello!")
}

/*
extension Collection where Element:Equatable{
    func allEqual() -> Bool{
        for element in self{
            if element != self.first{
                return false
            }
        }
        return true
    }
}
*/
/*
func swap2Ints(_ a: inout Int, _ b: inout Int){
    let tmp=a
    a=b
    b=tmp
}
*/



