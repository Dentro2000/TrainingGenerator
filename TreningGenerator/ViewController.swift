
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
    
    let exercises = Exercises()
    
    func exercisesGenerator(){
        let forChest = exercises.chestTricepsShouldersArray
        let forBack = exercises.backBicepsArray
        let forLegs = exercises.legsArray
        
        //let arrayOfArrays = [forChest, forAbs, forBack, forLegs]
        let arrayOfLables = [ex1,ex2, ex3, ex4, ex5, ex6, ex7, ex8].compactMap{ $0 }

        let abs = ExercisesGroup(groupName: "Abs",
                                          exercises: [
                                           AbsExercise(name: "Spięcia brzucha w leżeniu", level: .simple),
                                           AbsExercise(name: "Mountain Climbers (Bieg w podporze)", level: .simple),
                                           AbsExercise(name: "Plank", level: .simple),
                                           AbsExercise(name: "Skręty tułowia z unoszeniem nóg", level: .simple),
                                            
                                            AbsExercise(name: "Hard Abs 1", level: .hard)] )

        let allExecises: [String] = [
            exercises.randomExerciseGenerator(forChest),
            exercises.randomExerciseGenerator(abs.exercises.map { $0.name }),
            exercises.randomExerciseGenerator(forBack),
            exercises.randomExerciseGenerator(forLegs)
            ].flatMap{ $0 }

        let zipped = zip(arrayOfLables, allExecises)

        zipped.forEach { (arg) in

            let (label, chars) = arg
            label.text = String(chars)
        }

    }
    
    @IBAction func generateTraining(){
        exercisesGenerator()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

