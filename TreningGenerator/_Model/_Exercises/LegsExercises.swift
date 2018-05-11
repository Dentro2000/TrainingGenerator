
import Foundation

protocol LegsExercisesProtocol: ExerciseProtocol {}

struct LegsExercises: LegsExercisesProtocol {
    
    let name: String
    let level: ExerciseLevel
    let kind: Set<ExerciseKind>
}
