//
//  ViewController.swift
//  lab2
//
//  Created by Nikash Taskar on 9/17/19.
//  Copyright © 2019 Nikash Taskar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var dog:Animals?
//    var cat:Animals?
//    var bird:Animals?
//    var bunny:Animals?
//    var fish:Animals?
    
    // No guard statement
    var dog:Animals!
    var cat:Animals!
    var bird:Animals!
    var bunny:Animals!
    var fish:Animals!
    
    var animalList:[Animals] = []
    var currentAnimal:Animals!

    @IBOutlet weak var animalBackground: UIView!
    
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var feedButton: UIButton!
    
    @IBOutlet weak var dogButton: UIButton!
    
    @IBOutlet weak var catButton: UIButton!
    
    @IBOutlet weak var birdButton: UIButton!
    
    @IBOutlet weak var bunnyButton: UIButton!
    
    @IBOutlet weak var fishButton: UIButton!
    
    @IBOutlet weak var playedLabel: UILabel!
    
    @IBOutlet weak var fedLabel: UILabel!
    
    @IBOutlet weak var happinessDisplayView: DisplayView!
    
    @IBOutlet weak var foodLevelDisplayView: DisplayView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dog = Animals(name: "Dog", color: "Red")
        cat = Animals(name: "Cat", color: "Blue")
        bird = Animals(name: "Bird", color: "Yellow")
        bunny = Animals(name: "Bunny", color: "Green")
        fish = Animals(name: "Fish", color: "Purple")
        
//        guard let dog = dog else{
//            print("dog is not initialized")
//            exit(-1)
//        }
//        animalList.append(dog)
//        
//        guard let cat = cat else{
//            print("cat is not initialized")
//            exit(-1)
//        }
//        animalList.append(cat)
//        
//        guard let bird = bird else{
//            print("bird is not initialized")
//            exit(-1)
//        }
//        animalList.append(bird)
//        
//        guard let bunny = bunny else{
//            print("bunny is not initialized")
//            exit(-1)
//        }
//        animalList.append(bunny)
//        
//        guard let fish = fish else{
//            print("fish is not initialized")
//            exit(-1)
//        }
//        animalList.append(fish)
        
        // No guard statement
        animalList.append(dog)
        animalList.append(cat)
        animalList.append(bird)
        animalList.append(bunny)
        animalList.append(fish)
        
        currentAnimal = dog
        happinessDisplayView.color = UIColor.red
        foodLevelDisplayView.color = UIColor.red
        updateView()
    }
    
    func updateView(){
        happinessDisplayView.animateValue(to: (CGFloat(Double(currentAnimal.happiness)/10.0)))
        foodLevelDisplayView.animateValue(to: (CGFloat(Double(currentAnimal.foodLevel)/10.0)))
        
        playedLabel.text = "Played: \(currentAnimal.playCount)"
        
        fedLabel.text = "Fed: \(currentAnimal.foodCount)"
    }
    
    func updateView(animal: Animals){
        happinessDisplayView.animateValue(to: (CGFloat(Double(currentAnimal.happiness)/10.0)))
        foodLevelDisplayView.animateValue(to: (CGFloat(Double(currentAnimal.foodLevel)/10.0)))
        
        playedLabel.text = "Played: \(currentAnimal.playCount)"
        
        fedLabel.text = "Fed: \(currentAnimal.foodCount)"
        
        if(currentAnimal == dog){
            animalBackground.backgroundColor = UIColor.red
            animalImage.image = UIImage(named: "dog")
            happinessDisplayView.color = UIColor.red
            foodLevelDisplayView.color = UIColor.red
        } else if(currentAnimal == cat){
            animalBackground.backgroundColor = UIColor.blue
            animalImage.image = UIImage(named: "cat")
            happinessDisplayView.color = UIColor.blue
            foodLevelDisplayView.color = UIColor.blue
        } else if(currentAnimal == bird){
            animalBackground.backgroundColor = UIColor.yellow
            animalImage.image = UIImage(named: "bird")
            happinessDisplayView.color = UIColor.yellow
            foodLevelDisplayView.color = UIColor.yellow
        } else if(currentAnimal == bunny){
            animalBackground.backgroundColor = UIColor.green
            animalImage.image = UIImage(named: "bunny")
            happinessDisplayView.color = UIColor.green
            foodLevelDisplayView.color = UIColor.green
        } else {
            animalBackground.backgroundColor = UIColor.purple
            animalImage.image = UIImage(named: "fish")
            happinessDisplayView.color = UIColor.purple
            foodLevelDisplayView.color = UIColor.purple
        }
        
    }
    
    @IBAction func playAction(_ sender: Any) {
        currentAnimal.play()
        updateView()
    }
    
    @IBAction func feedAction(_ sender: Any) {
        currentAnimal.feed()
        updateView()
    }
    
    
    @IBAction func changeDog(_ sender: Any) {
        print("DOG")
        if(currentAnimal == dog){
            return
        } else {
            currentAnimal = dog
            updateView(animal: dog)
        }
    }
    
    @IBAction func changeCat(_ sender: Any) {
        print("CAT")
        if(currentAnimal == cat){
            return
        } else {
            currentAnimal = cat
            updateView(animal: cat)
        }
    }
    
    @IBAction func changeBird(_ sender: Any) {
        print("BIRD")
        if(currentAnimal == bird){
            return
        } else {
            currentAnimal = bird
            updateView(animal: bird)
        }
    }
    
    @IBAction func changeBunny(_ sender: Any) {
        print("BUNNY")
        if(currentAnimal == bunny){
            return
        } else {
            currentAnimal = bunny
            updateView(animal: bunny)
        }
    }
    
    @IBAction func changeFish(_ sender: Any) {
        print("FISH")
        if(currentAnimal == fish){
            return
        } else {
            currentAnimal = fish
            updateView(animal: fish)
        }
    }
}

