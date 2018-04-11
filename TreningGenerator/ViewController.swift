
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
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
   
    
}
//@IBAction func generateTraining() {
//    let arrayOfLables = [ex1,ex2, ex3, ex4, ex5, ex6, ex7, ex8].compactMap{ $0 }
//
//    zip(arrayOfLables, exercises.workoutPlan).forEach { (arg) in
//        let (label, exercise) = arg
//        label.text = exercise.name
//    }}
