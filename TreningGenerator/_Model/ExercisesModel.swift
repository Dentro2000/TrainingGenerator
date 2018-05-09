
import Foundation
import GameplayKit

struct ExercisesModel: Codable {

    private init() {
        abs = []
        chestTricepsShoulders = []
        backBiceps = []
        legs = []
    }

    static func model() -> ExercisesModel {
//        let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)

        let path = Bundle.main.path(forResource: "ExercisesModel", ofType: "plist")!

        let pListURL = URL(fileURLWithPath: path, relativeTo: nil)
        let decoder = PropertyListDecoder()

        let data = try! Data(contentsOf: pListURL)
        let stuff = try! decoder.decode(ExercisesModel.self, from: data)

        return stuff
    }
    
    let abs: [AbsExercise]
    
    
    let chestTricepsShoulders: [ChestTricepsShouldersExercises]
    
    
    let backBiceps: [BackBicepsExercises]
    
    
    let legs: [LegsExercises]
    
    
    var all: [ExerciseProtocol] {
        get {
            func c( _ inArray: [Any]) -> [ExerciseProtocol] {
                return inArray as! [ExerciseProtocol]
            }
            
            return c(abs) + c(chestTricepsShoulders) + c(backBiceps) + c(legs)
        }
    }

    
    
    private func moveTopList(){
        let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let pListURL = URL(fileURLWithPath: documentDirectory.path + "/ExercisesModel.plist", relativeTo: nil)
        let encoder = PropertyListEncoder()
        let pListData = try! encoder.encode(self)
        try! pListData.write(to: pListURL)
    }
    
}
