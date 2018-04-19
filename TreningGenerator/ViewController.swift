
import UIKit

class ViewController: UITableViewController {

    lazy var traningGenerator = {
        return TraningGenerator(exeModel: model)
    }()

    var model = ExercisesModel()
    lazy var workout: TraningGenerator.WorkautPlan = {
        return generateTrainig()
    }()

    func generateTrainig() -> TraningGenerator.WorkautPlan {
        return traningGenerator.workoutPlan(kind: .calisthenics)
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
}
