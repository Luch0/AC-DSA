//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    var returnArr = arr
    for i in 0..<returnArr.count {
        if i != 0 {
            returnArr[i-1] = arr[i]
        } else {
            returnArr[returnArr.count-1] = arr[0]
        }
    }
    return returnArr
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
    var returnArr = arr
    for i in 0..<returnArr.count {
        returnArr[i] = arr[abs(i+x)%arr.count]
    }
    return returnArr
}

//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
    if strOne.count != strTwo.count {
        return false
    }
    var strOneCopy = strOne
    for _ in 0..<strOne.count {
        let rotatedChar = strOneCopy.remove(at: strOneCopy.index(strOneCopy.startIndex, offsetBy: strOneCopy.count-1))
        strOneCopy.insert(rotatedChar, at: strOneCopy.index(strOneCopy.startIndex, offsetBy: 0))
        print(strOneCopy)
        if strOneCopy == strTwo { return true }
    }
    return false
}


//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
  1  2  3
  4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],[4,5,6],[11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
    var diag1 = 0
    var diag2 = 0
    for i in 0..<3 {
        for j in 0..<3 {
            if i == j { diag1 += arr[i][j] }
            if i + j == 2 { diag2 += arr[i][j] }
        }
    }
    return abs(diag1 - diag2)
}


//Problem Five
//Given a square matrix of size n x n , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 4 1 2 5 
 3 1 9 2
 4 1 3 8
 9 2 4 3
 */

//Sample Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]
//Sample Output: 13

//|(4 + 1 + 3 + 3) - (5 + 9 + 1 + 9)| = |11 - 24| = |-13| = 13

func problemFive(arr: [[Int]]) -> Int {
    var diag1 = 0
    var diag2 = 0
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if i == j { diag1 += arr[i][j] }
            if i + j == arr.count-1 { diag2 += arr[i][j] }
        }
    }
    return abs(diag1 - diag2)
}

