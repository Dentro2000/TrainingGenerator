import UIKit

protocol FilterViewControllerDelegate: class {
    func setKindOfExercies(_ kindOf: ExerciseKind)
    
}

class FilterViewController: UITableViewController {
    
    weak var delegate: FilterViewControllerDelegate?
    let kind: [ExerciseKind] = [ExerciseKind.calisthenics, ExerciseKind.streching, ExerciseKind.weightLifting]
   
    override func viewDidLoad() {
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kind.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kindOfCell", for: indexPath) as! FilterCell
            cell.kindOfLabel?.text = kind[indexPath.row].rawValue
          return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.setKindOfExercies(kind[indexPath.row])
        navigationController?.popViewController(animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
