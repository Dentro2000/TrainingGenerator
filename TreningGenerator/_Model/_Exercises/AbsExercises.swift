
import Foundation

enum AbsExercise: ExerciseProtocol {
    case simple(String)
    case medium(String)
    case hard(String)
    
    
    var name: String {
        switch self {
        case .simple(let name): return name
        case .medium(let name): return name
        case .hard(let name)  : return name
        }
    }
}


struct AbsExercises: ExerciseGroupProtocol {
    var groupName: String = "Abs"
    
    var simple: [ExerciseProtocol] {
        return _exercises.filter {
            if case AbsExercise.simple = $0 {
                return true
            } else {
                return false
            }
        }
    }
    
    var _exercises = [AbsExercise.simple("Spięcia brzucha w leżeniu"),
                      AbsExercise.simple("Mountain Climbers (Bieg w podporze)"),
                      AbsExercise.simple("Plank"),
                      AbsExercise.simple("Skręty tułowia z unoszeniem nóg"),
                      
                      AbsExercise.hard("hard abs 1")]
    
    var exercises: [ExerciseProtocol] {
        return _exercises
    }
}
