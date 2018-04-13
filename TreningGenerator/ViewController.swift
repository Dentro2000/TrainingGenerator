
import UIKit

struct TraningGenerator {
    let exeModel: ExercisesModel
    

    var workoutPlan: [String] {
        func takeRandom(_ inArray: Array<Any>) -> [ExerciseProtocol] {
            let array = (inArray as NSArray).shuffled().prefix(2)
            return Array(array) as! [ExerciseProtocol]
        }

        let workout = takeRandom(exeModel.abs) + takeRandom(exeModel.chestTricepsShoulders) + takeRandom(exeModel.backBiceps) + takeRandom(exeModel.legs)
        return workout.map {$0.name}
    }
    
}

class ViewController: UITableViewController {
    let sections = ["AbsExercises", "ChestTricepsShouldersExercises", "BackBicepsExercises", "LegsExercises"]

    lazy var traningGenerator = {
        return TraningGenerator(exeModel: model)
    }()

    var model   = ExercisesModel()
    lazy var workout: [String] = {
        return generateTrainig()
    }()

    func generateTrainig() -> [String] {
        return traningGenerator.workoutPlan
    }

    @IBAction func generate(){
        workout = generateTrainig()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workout.count/sections.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell", for: indexPath) as! TableViewCell
   
        cell.exLabel?.text = workout[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView:    UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
}

