
import Foundation

protocol ExerciseProtocol {
    associatedtype Exercise
    
    var exercise: [Exercise] { get }
}


protocol ExerciseGroupProtocol: ExerciseProtocol {
    var groupName: String { get }
    var exercises: [ExerciseProtocol] { get }
}
