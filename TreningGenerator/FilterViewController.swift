import UIKit

protocol FilterViewControllerDelegate: class {
    func setKindOfExercies(_ kindOf: Set<ExerciseKind>)
    
}

class FilterViewController: UITableViewController {
    
    weak var delegate: FilterViewControllerDelegate?
    let kind: [ExerciseKind] = [ExerciseKind.calisthenics, ExerciseKind.streching, ExerciseKind.weightLifting]
    var arrayOfChosenExercies = Set<ExerciseKind>()
    
    @IBAction func done() {
    navigationController?.popViewController(animated: true)
    delegate?.setKindOfExercies(arrayOfChosenExercies)
    }
    
    override func viewDidLoad() {
        tableView.tableFooterView = UIView()
        tableView.allowsMultipleSelection = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kind.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kindOfCell", for: indexPath) as! FilterCell
            cell.kindOfLabel?.text = kind[indexPath.row].rawValue
          return cell
    
    }
    
    func addElementToSet(_ kind: ExerciseKind){
        arrayOfChosenExercies.insert(kind)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        addElementToSet(kind[indexPath.row])
    }
}
