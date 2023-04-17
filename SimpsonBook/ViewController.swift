//
//  ViewController.swift
//  SimpsonBook


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mySimpons = [Simpson]()
    var chosenSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let homer = Simpson(image: UIImage(named: "homer")!, name: "Homer Simpson", job: "Nuclear Safety")
        let marge = Simpson(image: UIImage(named: "marge")!, name: "Marge Simpson", job: "Housewife")
        let bart = Simpson(image: UIImage(named: "bart.svg")!, name: "Bart Simpson", job: "Student")
        let lisa = Simpson(image: UIImage(named: "lisa")!, name: "Lisa Simpson", job: "Student")
        let maggie = Simpson(image: UIImage(named: "maggie")!, name: "Maggie Simpson", job: "Baby")
        
        mySimpons.append(homer)
        mySimpons.append(marge)
        mySimpons.append(bart)
        mySimpons.append(lisa)
        mySimpons.append(maggie)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       chosenSimpson = mySimpons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationCV = segue.destination as! DetailsVC
            destinationCV.seletecedSimpson = chosenSimpson
        }
    }
}

