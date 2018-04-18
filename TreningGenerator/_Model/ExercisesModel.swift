
import Foundation
import GameplayKit

struct ExercisesModel {
    
    let abs: [AbsExerciseProtocol] = [
        AbsExercise(name: "Spięcia brzucha w leżeniu",              level: .simple, kind: .calisthenics),
        AbsExercise(name: "Mountain Climbers (Bieg w podporze)",    level: .simple, kind: .calisthenics),
        AbsExercise(name: "Plank",                                  level: .simple, kind: .calisthenics),
        AbsExercise(name: "Skręty tułowia z unoszeniem nóg",        level: .simple, kind:. calisthenics),
            
        AbsExercise(name: "Hard Abs 1", level: .hard, kind: .calisthenics)
        ]
    
    
    let chestTricepsShoulders: [ChestTricepsShouldersExercisesProtocol] = [
        ChestTricepsShouldersExercises(name: "Pompki Klasyczne", level: .simple, kind: .calisthenics),
        ChestTricepsShouldersExercises(name: "Popmpki Szerokie", level: .simple, kind: .calisthenics),
            ChestTricepsShouldersExercises(name: "Pike push-up", level: .simple, kind: .calisthenics),
            ChestTricepsShouldersExercises(name: "Dipy na krześle", level: .simple, kind: .calisthenics)
        ]
    
    
    let backBiceps: [BackBicepsExercisesProtocol] =  [
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu podchwyt",           level: .simple, kind: .calisthenics),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu szeroki nachwyt",    level: .simple, kind: .calisthenics),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu wąski nachwyt",      level: .simple, kind: .calisthenics),
            
            BackBicepsExercises(name: "Superman",   level: .simple, kind: .calisthenics)
        ]
    
    
    let legs: [LegsExercisesProtocol] = [
            LegsExercises(name: "Przysiad / Głęboki przysiad",              level: .simple, kind: .calisthenics),
            LegsExercises(name: "Wykroki",                                  level: .simple, kind: .calisthenics),
            LegsExercises(name: "Unoszenie bioder w leżeniu na plecach",    level: .simple, kind: .calisthenics),
            LegsExercises(name: "Wspięcia na palce jednej nogi",            level: .simple, kind: .calisthenics)
        ]
    
    
    var all: [ExerciseProtocol] {
        get {
            func c( _ inArray: [Any]) -> [ExerciseProtocol] {
                return inArray as! [ExerciseProtocol]
            }
            
            return c(abs) + c(chestTricepsShoulders) + c(backBiceps) + c(legs)
        }
    }
}

