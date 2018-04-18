
import Foundation

protocol ChestTricepsShouldersExercisesProtocol: ExerciseProtocol {}

struct ChestTricepsShouldersExercises: ChestTricepsShouldersExercisesProtocol {
    let name: String
    let level: ExerciseLevel
    let kind: Set<ExerciseKind>
}
