
import UIKit

class ViewController: UITableViewController {
    
    let exercises = ExercisesModel()
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.workoutPlan.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell", for: indexPath) as! TableViewCell
        
        let workout = exercises.workoutPlan as! [String]
        for exercise in workout {
            cell.exLabel?.text = exercise
        }
        
        
        return cell
    }
    
   
    
}
//@IBAction func generateTraining() {
//    let arrayOfLables = [ex1,ex2, ex3, ex4, ex5, ex6, ex7, ex8].compactMap{ $0 }
//
//    zip(arrayOfLables, exercises.workoutPlan).forEach { (arg) in
//        let (label, exercise) = arg
//        label.text = exercise.name
//    }}
