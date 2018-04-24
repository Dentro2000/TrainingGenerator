import UIKit

protocol FilterViewControllerDelegate: class {
    func setKindOfExercies(_ kindOf: ExerciseKind)
    
}

class FilterViewController: UITableViewController {
    
    weak var delegate: FilterViewControllerDelegate?
    let kind: [String] = [ExerciseKind.calisthenics.rawValue, ExerciseKind.streching.rawValue]
   
    
    override func viewDidLoad() {
        tableView.tableFooterView = UIView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kind.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kindOfCell", for: indexPath) as! FilterCell
            cell.kindOfLabel?.text = kind[indexPath.row]
          return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if kind[indexPath.row] == ExerciseKind.calisthenics.rawValue {
            delegate?.setKindOfExercies(.calisthenics)
            navigationController?.popViewController(animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        } else if kind[indexPath.row] == ExerciseKind.streching.rawValue {
            delegate?.setKindOfExercies(.streching)
            navigationController?.popViewController(animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
