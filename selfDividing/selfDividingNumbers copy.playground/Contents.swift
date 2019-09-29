import UIKit

//A self-dividing number is a number that is divisible by every digit it contains.
//
//For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
//
//Also, a self-dividing number is not allowed to contain the digit zero.
//
//Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
//
//Example 1:
//
//Input:
//left = 1, right = 22
//Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
//Note:
//
//The boundaries of each input argument are 1 <= left <= right <= 10000.
func checkDivis(divi:Int, ar: [Int] )->Bool{
    var isDivisiable = Bool()
    
    for digit in ar{
        if divi % digit == 0{
            isDivisiable = true
        }else{
            isDivisiable = false
            break
        }
    }
    
    
    return isDivisiable
}

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var answer = [Int]()
    
    for number in left...right{
        if String(number).contains("0") != true{
            if checkDivis(divi: number, ar: seperate(intput: number)) == true{
                answer.append(number)
            }
            
            
        }
        
    }
    //print(left, right)
    print(answer)
    return answer
}

func seperate(intput: Int)->[Int]{
    var modTest = intput
    var modTestArray = [Int]()

    while (modTest != 0){
    modTestArray.append(modTest % 10)
        modTest -= (modTest % 10)
        modTest /= 10
        //modTestArray.sort()
        
        
    }
    modTestArray.reverse()
    
        print(modTestArray)
    return modTestArray

}

selfDividingNumbers(1, 130)

seperate(intput: 103)

var cont = 1003

print(String(cont).contains("0"))



print(checkDivis(divi: 25, ar: [2,5]))
