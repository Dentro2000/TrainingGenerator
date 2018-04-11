
import UIKit

class ViewController: UITableViewController {
    

    let workout = ExercisesModel().workoutPlan
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workout.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell", for: indexPath) as! TableViewCell
      
        let output = workout.map({
            exercise in
            return exercise.name
        })
        
        cell.exLabel?.text = output[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView:    UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

