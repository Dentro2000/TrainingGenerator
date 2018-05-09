
import Foundation

enum ExerciseKind: String, Codable {
    case calisthenics
    case streching
    case weightLifting

    static var allCases: [ExerciseKind] {
        return [.calisthenics, .streching, .weightLifting ]
    }
}

protocol ExerciseProtocol: Codable {
    var name: String { get }
    var level: ExerciseLevel { get }
    var kind: Set<ExerciseKind> { get }
}
