
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
    
    var exercises: [ExerciseProtocol] = [AbsExercise.simple("Spięcia brzucha w leżeniu"),
                                         AbsExercise.simple("Mountain Climbers (Bieg w podporze)"),
                                         AbsExercise.simple("Plank"),
                                         AbsExercise.simple("Skręty tułowia z unoszeniem nóg")]
}
