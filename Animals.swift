//
//  Animals.swift
//  lab2
//
//  Created by Nikash Taskar on 9/17/19.
//  Copyright © 2019 Nikash Taskar. All rights reserved.
//

import Foundation

class Animals: Equatable{
    
    var name:String?
    var foodLevel:Int
    var foodCount:Int = 0
    var happiness:Int
    var playCount:Int = 0
    var color:String?
    
    //Init
    init(name: String, color: String){
        self.name = name
        self.color = color
        foodLevel = 5
        happiness = 5
    }
    
    //Behavior
    func feed(){
        foodCount += 1
        foodLevel += 1
        if(foodLevel > 10){
            foodLevel = 10
        }
    }
    
    func play(){
        if(foodLevel > 1){
            happiness += 1
            playCount += 1
            foodLevel -= 1
        }
    }
    
    //Ensuring equality between two Animals objects
    static func ==(lhs:Animals, rhs:Animals) -> Bool{
        return lhs.name == rhs.name
    }
}
