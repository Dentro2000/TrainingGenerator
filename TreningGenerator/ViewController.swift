
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ex1: UILabel!
    @IBOutlet weak var ex2: UILabel!
    @IBOutlet weak var ex3: UILabel!
    @IBOutlet weak var ex4: UILabel!
    @IBOutlet weak var ex5: UILabel!
    @IBOutlet weak var ex6: UILabel!
    @IBOutlet weak var ex7: UILabel!
    @IBOutlet weak var ex8: UILabel!
    
    
    let exercises = ExercisesModel()
    
    
    @IBAction func generateTraining() {
        let arrayOfLables = [ex1,ex2, ex3, ex4, ex5, ex6, ex7, ex8].compactMap{ $0 }
        
        zip(arrayOfLables, exercises.workoutPlan).forEach { (arg) in
            let (label, exercise) = arg
            label.text = exercise.name
        }
    }
}
