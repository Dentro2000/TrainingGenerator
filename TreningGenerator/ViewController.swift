
import UIKit

class ViewController: UITableViewController {
    
    var workout = ExercisesModel().workoutPlanHelperMethod()
    
    func generateTrainig(){
        let newWorkout = ExercisesModel().workoutPlanHelperMethod()
        workout = newWorkout
    }
    
    @IBAction func generate(){
        generateTrainig()
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workout.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell", for: indexPath) as! TableViewCell
        
        
        cell.exLabel?.text = workout[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView:    UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

