
import Foundation

protocol BackBicepsExercisesProtocol: ExerciseProtocol {}

struct BackBicepsExercises: BackBicepsExercisesProtocol {
    let name: String
    let level: ExerciseLevel
    let kind: Set<ExerciseKind>
}
