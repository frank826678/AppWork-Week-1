//
//  main.swift
//  AppWork week1-Swift Basic
//
//  Created by Frank on 2018/7/6.
//  Copyright © 2018 Frank. All rights reserved.
//

import Foundation

// Swift Basic Week 1
// Q1

var PI = 3.14159
// 我認為應該使用let 因為 PI 這個值是固定的 且我們之後也不會再去更改他  用 let 應該比較適合

// Q2
let x:Int=85,y:Int=45
let average=(x+y)/2
print(average)


var average1  = (Double(x)+Double(y))/2

print(average1)


//Q3-1 將 Int 轉換為 Double 再加以運算  宣告完型別後用括號把它包起來
//Q3-2  10 / 3 和 ( 10.0 / 3.0 ) 差別為 Int 只能做整數運算 Double才可以做浮點數運算


//Q4
var flag:Bool = true
var ​inputString:String = "​Hello world."
let ​bitsInBite:Int = 8
let ​averageScore:Double = 86.8

//Q5
var salary = 22000
    salary += 28000
print(salary)

//Q6
var Q6 = x+10 // 把Q2的x 在右邊 加 10 後傳回給左邊的Q6
print(Q6)

// Equality 是用 "==" 來表示 等於 通常用在比較左右兩邊的值  是否相等


//Q7
let remain = 10 % 3

print(remain)

//Q8 let儲存的數值不可以變更是常數 var是變數 儲存的值可以變更

//Q9 Please write down naming conventions and rules you learned in this session.
//我們會盡量使用相對應的英文字來命名我們要的東西,並且會在第“二”個單字的第一個字大寫來表示,比較好識別這是什麼東西
//使用 Camel case 方法命名 而通常我們要用的命名第一個字不大寫是因為型別名稱的開頭才大寫
//而swift的保留字用法也跟字面上的英文解釋相同,所以使用起來是非常直觀的.Ex:字串就是String,if就是假如


//Swift Collection and Control Flow
//Array

var myFriends=[String]()
myFriends=["Ian","Bomi","Kevin"]
//  print(myFriends)
myFriends.append("Michael")
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)
//  print(myFriends)

for number in 0...myFriends.count-1{
    print(myFriends[number])
}

//Q6 print(myFriends[5]) []內輸入數值可以求出該欄位的值 在這裡輸入5會出錯
//因為 超出範圍 上述的array 只有 0...3 共四個值 out of range

//Q7
print(myFriends[0])

//Q8
print(myFriends.last)

//Dictionary

//Q1
var myCountryNumber:[String:Int]=["US":1,"GB":44,"JP":81]

print(myCountryNumber)

myCountryNumber["GB"]=0

print(myCountryNumber)
//Q4 var myCountryNumber = [String: Int]() 用這個方法創造空字典

// For, While, Repeat

let lottoNumbers = [10,9,8,7,6,5]

//Q1
for Range in lottoNumbers.count-3...lottoNumbers.count-1{
    print(lottoNumbers[Range])
}

//Q2
for Range in (0...lottoNumbers.count-1).reversed(){
    print(lottoNumbers[Range])
}

for Range in 0...lottoNumbers.count-1{
    if Range%2==0{
    print(lottoNumbers[Range])
    continue
    }
    else {
        
    }
}

print("以下Q3")
//Q3
var Q3 = lottoNumbers.count-1
while Q3 >= 0 {
    print(lottoNumbers[Q3])
    Q3=Q3-1
}

Q3=0
while Q3 < lottoNumbers.count-1 {
    print(lottoNumbers[Q3])
    Q3=Q3+2
}

//Q4
print("以下Q4")

var Q4 = lottoNumbers.count-1

repeat {
    print(lottoNumbers[Q4])
    Q4=Q4-1
}while Q4 >= 0

Q4=0
repeat{
    print(lottoNumbers[Q4])
    Q4=Q4+2
}while Q4 < lottoNumbers.count-1


//If statement

var isRaining="is raining"
if  isRaining=="is raining"{
    print("​It’s raining, I don’t want to work today.")
   }
else{
    print("Although it’s sunny, I still don’t want to work today.")
}

//Switch

var jobLevel=2
switch jobLevel {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default:
    print("We don't have this job")
}

//Function in Swift
//Q1
func greet(person:String) {
    print("Hello,\(person)")
}

greet(person: "Frank Lin")


//Q2
func multiply(a:Int,b:Int = 10){
    print(a * b)
}

multiply(a: 5)
multiply(a: 4, b: 3)

//Q3
//What is the difference between argument label and pararmeter label in function ?
//參數外部名稱(Argument Label)、參數內部名稱(Parameter Name),如果沒有特別指定,他們就會是一樣的。但通常為了讓我們的程式有更好的可讀性,Argument Label 是外部在看的（func以外）,而 Parameter Name 是(func裡面)內部在看的.ㄊ

//Q4 第一個func 傳回String  第二個func 傳回Double

//Others
//Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.

// 因為我們要使用 github的關係 所以需要先註冊github的帳號,並且按照官網的操作建立一個新的repository 選擇 create a new repository on command line, 並照著上面的內容按部就班輸入指令 echo~ init~ add~ commit~remote~ 這裡會用到 origin 這邊是指代表後面那串網址 指向位置）的意思 以後就不用輸入後面的網址 只要輸入  origin 即可 , push 時輸入帳密即可。git push -u origin master， -u 是指upstream 的意思,指向並追蹤(track)某個分支,通常upstream 會是遠端Server上的某個分支，要設定在本地端其他分支也可以。上指令是把master 分支的內容 推向origin的位置。Working Directory 用git add 到 Staging Area , git commit 到 Repository.隨時可以用 git status 檢查狀態來確保指令是否有用對，我覺得這個指令對剛用git的人很有幫助。

//END 20180708 0100
