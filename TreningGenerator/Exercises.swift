//
//  Exercises.swift
//  TreningGenerator
//
//  Created by SZK on 09.04.2018.
//  Copyright © 2018 SZK. All rights reserved.
//

import Foundation


struct Exercises {
    // Znaleźć sposób żeby przerobić enum na tablice automatycznie
    
    let chestTricepsShouldersArray = [ChestTricepsShoulders.a1.rawValue, ChestTricepsShoulders.a2.rawValue, ChestTricepsShoulders.a3.rawValue, ChestTricepsShoulders.a4.rawValue]
    let backBicepsArray = [BackBiceps.b1.rawValue, BackBiceps.b2.rawValue, BackBiceps.b3.rawValue, BackBiceps.b4.rawValue]
    let legsArray = [Legs.c1.rawValue, Legs.c2.rawValue, Legs.c3.rawValue, Legs.c4.rawValue]
    let absArray = [Abs.d1.rawValue, Abs.d2.rawValue, Abs.d3.rawValue, Abs.d4.rawValue]
    
    func randomExercise(_ anyExerciseArray:[String]) -> Int {
        let random = Int(arc4random_uniform(UInt32(anyExerciseArray.count)))
        return random
    }
    

    func randomExerciseGenerator(_ anyExerciseArray:[String]) -> [String] {
        let randomNumber1 = randomExercise(anyExerciseArray)
        var randomNumber2 = 0
        
        while randomNumber1 == randomNumber2 {
            randomNumber2 = randomExercise(anyExerciseArray)
        }
        let result = [anyExerciseArray[randomNumber1], anyExerciseArray[randomNumber2]]
        return result
    }
    
    
}


