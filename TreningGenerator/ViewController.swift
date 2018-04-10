
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

//        let exerciseForChest =
//        ex1.text = exerciseForChest[0]
//        ex2.text = exerciseForChest[1]

//        let exeriseForAbs = exercises.randomExerciseGenerator(AbsExercises().exercises.map { $0.name })
//        ex3.text = exeriseForAbs[0]
//        ex4.text = exeriseForAbs[1]
//
//        let exeriseForBack = exercises.randomExerciseGenerator(forBack)
//        ex5.text = exeriseForBack[0]
//        ex6.text = exeriseForBack[1]
//
//        let exeriseForLegs = exercises.randomExerciseGenerator(forLegs)
//        ex7.text = exeriseForLegs[0]
//        ex8.text = exeriseForLegs[1]

        let allExecises: [String] = [
            exercises.randomExerciseGenerator(forChest),
            exercises.randomExerciseGenerator(AbsExercises().exercises.map { $0.name }),
            exercises.randomExerciseGenerator(forBack),
            exercises.randomExerciseGenerator(forLegs)
            ]

        let zipped = zip(arrayOfLables, allExecises)

//        zipped.forEach { (arg) in
//
//            let (label, chars) = arg
//            label.text = String(chars)
//        }

    }
    
    @IBAction func generateTraining(){
        exercisesGenerator()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

