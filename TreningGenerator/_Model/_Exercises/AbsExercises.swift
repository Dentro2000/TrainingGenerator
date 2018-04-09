
import Foundation

enum AbsExercise: ExerciseProtocol {
    case simple(String)
    
    
    var name: String {
        switch self {
        case .simple(let name): return name
        }
    }
}


struct AbsExercises: ExerciseGroupProtocol {
    var groupName: String = "Abs"
    
    var exercises: [ExerciseProtocol] = [AbsExercise.simple("abs simple 1"), AbsExercise.simple("abs simple 2")]
}
