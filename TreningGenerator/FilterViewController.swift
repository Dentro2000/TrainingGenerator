import UIKit

protocol FilterViewControllerDelegate: class {
    func setKindOfExercies(_ kindOf: Set<ExerciseKind>)
    
}

class FilterViewController: UITableViewController {
    
    weak var delegate: FilterViewControllerDelegate?
    let kind: Set<ExerciseKind> = [ExerciseKind.calisthenics, ExerciseKind.streching, ExerciseKind.weightLifting]
    @IBAction func done() {
    navigationController?.popViewController(animated: true)
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
            let arrayOfSet = Array(kind)
            cell.kindOfLabel?.text = arrayOfSet[indexPath.row].rawValue
          return cell

    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        delegate?.setKindOfExercies([kind[indexPath.row]] )
        
    }
}



