
import Foundation

protocol ExerciseGroupProtocol {    
    var groupName: String { get }
    var exercises: [ExerciseProtocol] { get }
}
