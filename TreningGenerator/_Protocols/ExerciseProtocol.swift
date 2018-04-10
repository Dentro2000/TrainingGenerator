
import Foundation

// MARK: -
protocol ExerciseProtocol {
    var name: String { get }
    var level: ExerciseLevel { get }
}


protocol ExerciseGroupProtocol {
    associatedtype Exercise: ExerciseProtocol
    
    var groupName: String { get }
    var exercises: [Exercise] { get }
}

// MARK: - Marker Protocols
protocol AbsExerciseProtocol: ExerciseProtocol {}
