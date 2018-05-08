
import Foundation
import GameplayKit

struct ExercisesModel {
    
    let abs: [AbsExerciseProtocol] = [
        AbsExercise(name: "Spięcia brzucha w leżeniu",              level: .simple, kind: [.calisthenics]),
        AbsExercise(name: "Mountain Climbers (Bieg w podporze)",    level: .simple, kind: [.calisthenics]),
        AbsExercise(name: "Plank",                                  level: .simple, kind: [.calisthenics]),
        AbsExercise(name: "Skręty tułowia z unoszeniem nóg",        level: .simple, kind: [.calisthenics]),
            
        AbsExercise(name: "Hard Abs 1", level: .hard, kind: [.streching])
        ]
    
    
    let chestTricepsShoulders: [ChestTricepsShouldersExercisesProtocol] = [
        ChestTricepsShouldersExercises(name: "Pompki Klasyczne", level: .simple, kind: [.calisthenics]),
        ChestTricepsShouldersExercises(name: "Popmpki Szerokie", level: .simple, kind: [.calisthenics]),
            ChestTricepsShouldersExercises(name: "Pike push-up", level: .simple, kind: [.calisthenics]),
            ChestTricepsShouldersExercises(name: "Dipy na krześle", level: .simple, kind: [.calisthenics]),
            ChestTricepsShouldersExercises(name: "Wyciskanie Sztangi", level: .simple, kind: [.weightLifting])
        ]
    
    
    let backBiceps: [BackBicepsExercisesProtocol] =  [
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu podchwyt",
                                level: .simple, kind: [.calisthenics]),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu szeroki nachwyt",
                                level: .simple, kind: [.calisthenics]),
            BackBicepsExercises(name: "Podciąganie poziome do krawędzi blatu stołu wąski nachwyt",
                                level: .simple, kind: [.calisthenics]),
            
            BackBicepsExercises(name: "Superman",   level: .simple, kind: [.calisthenics]),
            BackBicepsExercises(name: "Martwy ciąg",   level: .simple, kind: [.weightLifting])
        ]
    
    
    let legs: [LegsExercisesProtocol] = [
            LegsExercises(name: "Przysiad / Głęboki przysiad",              level: .simple, kind: [.calisthenics]),
            LegsExercises(name: "Wykroki",                                  level: .simple, kind: [.calisthenics]),
            LegsExercises(name: "Unoszenie bioder w leżeniu na plecach",    level: .simple, kind: [.calisthenics]),
            LegsExercises(name: "Wspięcia na palce jednej nogi",            level: .simple, kind: [.calisthenics]),
            LegsExercises(name: "Przysiad ze sztangą na barkach",            level: .simple, kind: [.weightLifting]),
        ]
    
    
    var all: [ExerciseProtocol] {
        get {
            func c( _ inArray: [Any]) -> [ExerciseProtocol] {
                return inArray as! [ExerciseProtocol]
            }
            
            return c(abs) + c(chestTricepsShoulders) + c(backBiceps) + c(legs)
        }
    }
    
    
    public func moveTopList(){
        let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let pListURL = URL(fileURLWithPath: "ExercisesModel", relativeTo: documentDirectory.appendingPathExtension("plist"))
        let encoder = PropertyListEncoder()
        let pListData = try! encoder.encode(self)
        try! pListData.write(to: pListURL)
    }
    
}
