import UIKit

protocol FilterViewControllerDelegate: class {
    func setKindOfExercies(_ kindOf: ExerciseKind)
    
}

class FilterViewController: UITableViewController {
    
    weak var delegate: FilterViewControllerDelegate?
    let kind = ["Calisthenics", "Stretching"]
   
    
    override func viewDidLoad() {
        tableView.tableFooterView = UIView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kindOfCell", for: indexPath) as! FilterCell
            cell.kindOfLabel?.text = kind[indexPath.row]
          return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            delegate?.setKindOfExercies(.calisthenics)
            navigationController?.popViewController(animated: true)
        } else if indexPath.row == 1 {
            delegate?.setKindOfExercies(.streching)
            navigationController?.popViewController(animated: true)
        }
    }
}
