
import UIKit

struct TraningGenerator {
    let exeModel: ExercisesModel

    struct WorkautPlan {

        struct Set {

            let header: String
            let exes: [String]
            let kind: ExerciseKind
        }

        let sets: [TraningGenerator.WorkautPlan.Set]
    }

    var workoutPlan: WorkautPlan {
        func takeRandom(_ inArray: Array<Any>) -> ([String], [ExerciseKind]) {
            let array = (inArray as NSArray).shuffled().prefix(2)
            let exe = Array(array) as! [ExerciseProtocol]
            return exe.map { $0.name, $0.kind }
         
        }

        return WorkautPlan(sets: [
            TraningGenerator.WorkautPlan.Set(header: "AbsExercises",    exes: takeRandom(exeModel.abs), kind: .calisthenics),
            TraningGenerator.WorkautPlan.Set(header: "Back and Biceps", exes: takeRandom(exeModel.backBiceps), kind: .calisthenics),
            TraningGenerator.WorkautPlan.Set(header: "Chest, triceps and shuolders", exes: takeRandom(exeModel.chestTricepsShoulders), kind: .calisthenics),
            TraningGenerator.WorkautPlan.Set(header: "Legs", exes: takeRandom(exeModel.legs), kind: .calisthenics)
            ])
    }
}


class ViewController: UITableViewController {

    lazy var traningGenerator = {
        return TraningGenerator(exeModel: model)
    }()

    var model = ExercisesModel()
    lazy var workout: TraningGenerator.WorkautPlan = {
        return generateTrainig()
    }()

    func generateTrainig() -> TraningGenerator.WorkautPlan {
        return traningGenerator.workoutPlan
    }

    @IBAction func generate(){
        workout = generateTrainig()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return workout.sets[section].header
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return workout.sets.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workout.sets[section].exes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell", for: indexPath) as! TableViewCell
   
        cell.exLabel?.text = workout.sets[indexPath.section].exes[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView:    UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
}

