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
    var lastFed:Date?
    var lastFedString:String?
    let dateFormat = DateFormatter()
    
    //Init
    init(name: String, color: String){
        self.name = name
        self.color = color
        self.lastFed = Date()
        dateFormat.dateFormat = "HH:mm"
        dateFormat.locale = Locale(identifier: "en_US")
        self.lastFedString = dateFormat.string(from: self.lastFed!)
        foodLevel = 1
        happiness = 1
    }
    
    //Behavior
    func feed(){
        foodCount += 1
        foodLevel += 1
        if(foodLevel > 10){
            foodLevel = 10
        }
        self.lastFed = Date()
        self.lastFedString = dateFormat.string(from: lastFed!)
    }
    
    func play() -> Bool{
        if(foodLevel > 1){
            happiness += 1
            playCount += 1
            foodLevel -= 1
        } else {
            let delta = self.lastFed!.timeIntervalSinceNow
            if(delta < -30){
                return false
            }
        }
        return true
    }
    
    func decrementHappiness() {
        happiness -= 1
    }
    
    //Ensuring equality between two Animals objects
    static func ==(lhs:Animals, rhs:Animals) -> Bool{
        return lhs.name == rhs.name
    }
}
