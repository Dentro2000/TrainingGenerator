
import Foundation

enum ExerciseKind: String {
    case calisthenics
    case streching
}

protocol ExerciseProtocol {
    var name: String { get }
    var level: ExerciseLevel { get }
    var kind: Set<ExerciseKind> { get }
}
