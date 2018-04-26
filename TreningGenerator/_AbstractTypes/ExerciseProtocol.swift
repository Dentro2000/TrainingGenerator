
import Foundation

enum ExerciseKind: String {
    case calisthenics
    case streching
    case weightLifting
    static var allCases: Set<ExerciseKind> {
        return [.calisthenics, .streching, .weightLifting]

    }

}

protocol ExerciseProtocol {
    var name: String { get }
    var level: ExerciseLevel { get }
    var kind: Set<ExerciseKind> { get }
}
