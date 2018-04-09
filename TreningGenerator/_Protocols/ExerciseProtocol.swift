
import Foundation


protocol ExerciseProtocol {
    var name: String { get }
}


protocol ExerciseGroupProtocol {
    var groupName: String { get }
    var exercises: [ExerciseProtocol] { get }
}
