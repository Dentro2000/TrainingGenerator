
import Foundation

protocol AbsExerciseProtocol: ExerciseProtocol {}

struct AbsExercise: AbsExerciseProtocol {
    let name: String
    let level: ExerciseLevel
}
