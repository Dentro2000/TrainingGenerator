
import Foundation
import GameplayKit

struct ExercisesModel {
    
    let abs: [AbsExerciseProtocol] = [
            AbsExercise(name: "Spięcia brzucha w leżeniu",              level: .simple),
            AbsExercise(name: "Mountain Climbers (Bieg w podporze)",    level: .simple),
            AbsExercise(name: "Plank",                                  level: .simple),
            AbsExercise(name: "Skręty tułowia z unoszeniem nóg",        level: .simple),
            
            AbsExercise(name: "Hard Abs 1", level: .hard)
        ]
    
    
    let chestTricepsShoulders: [ChestTricepsShouldersExercisesProtocol] = [
            ChestTricepsShouldersExercises(name: "Pompki Klasyczne", level: .simple),
            ChestTricepsShouldersExercises(name: "Popmpki Szerokie", level: .simple),
            ChestTricepsShouldersExercises(name: "Pike push-up", level: .simple),
            ChestTricepsShouldersExercises(name: "Dipy na krześle", level: .simple)
        ]
    
    
    let backBiceps: [BackBicepsExercisesProtocol] =  [
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu podchwyt",           level: .simple),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu szeroki nachwyt",    level: .simple),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu wąski nachwyt",      level: .simple),
            
            BackBicepsExercises(name: "Superman",   level: .simple)
        ]
    
    
    let legs: [LegsExercisesProtocol] = [
            LegsExercises(name: "Przysiad / Głęboki przysiad",              level: .simple),
            LegsExercises(name: "Wykroki",                                  level: .simple),
            LegsExercises(name: "Unoszenie bioder w leżeniu na plecach",    level: .simple),
            LegsExercises(name: "Wspięcia na palce jednej nogi",            level: .simple)
        ]
    
    
    var all: [ExerciseProtocol] {
        get {
            func c( _ inArray: [Any]) -> [ExerciseProtocol] {
                return inArray as! [ExerciseProtocol]
            }
            
            return c(abs) + c(chestTricepsShoulders) + c(backBiceps) + c(legs)
        }
    }
    
    
    var workoutPlan: [ExerciseProtocol] {
        func takeRandom(_ inArray: Array<Any>) -> [ExerciseProtocol] {
            let array = (inArray as NSArray).shuffled().prefix(2)
            return Array(array) as! [ExerciseProtocol]
        }
        
        return takeRandom(abs) + takeRandom(chestTricepsShoulders) + takeRandom(backBiceps) + takeRandom(legs)
    }
    
    func workoutPlanHelperMethod () -> [String] {
        let output = workoutPlan.map{
            exercise in
            return exercise.name
        }
        return output
    }

}

