
import Foundation

struct TraningGenerator {
    let exeModel: ExercisesModel

    struct WorkautPlan {

        struct Set {
            let header: String
            let exes: [String]
        }

        let sets: [TraningGenerator.WorkautPlan.Set]
    }

    func workoutPlan(filter: Set<ExerciseKind>) -> WorkautPlan {

        func takeRandom(_ inArray: [ExerciseProtocol]) -> [String] {
            let filtered = inArray.filter {
                return $0.kind.isSubset(of: filter)
            }
            let array = (filtered as NSArray).shuffled().prefix(2)
            let exe = Array(array) as! [ExerciseProtocol]
            return exe.map { $0.name }

        }

        return WorkautPlan(sets: [
            TraningGenerator.WorkautPlan.Set(header: "AbsExercises",
                                             exes: takeRandom(exeModel.abs)),

            TraningGenerator.WorkautPlan.Set(header: "Back and Biceps",
                                             exes: takeRandom(exeModel.backBiceps)),

            TraningGenerator.WorkautPlan.Set(header: "Chest, triceps and shuolders",
                                             exes: takeRandom(exeModel.chestTricepsShoulders)),

            TraningGenerator.WorkautPlan.Set(header: "Legs",
                                             exes: takeRandom(exeModel.legs))
            ])
    }
}
