
import Foundation

struct AbsExercise: AbsExerciseProtocol {
    let name: String
    let level: ExerciseLevel
}


struct ExercisesGroup<T: ExerciseProtocol>  : ExerciseGroupProtocol {
    typealias Exercise = T
    
    var groupName: String
    var exercises: [Exercise]
}
