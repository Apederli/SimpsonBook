//
//  ViewController.swift
//  SimpsonBook
//
//  Created by aydoğan pederli on 2.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    
    @IBOutlet weak var tableView: UITableView!
    let homer = Simpson(name: "Homer", job: "Baba", image: UIImage(named: "Homer")!)
    let marge = Simpson(name: "Marge", job: "Anne", image: UIImage(named: "Marge")!)
    let bart = Simpson(name: "Bart", job: "Erkek Çocuk", image: UIImage(named: "bart")!)
    let lisa = Simpson(name: "Lisa", job: "Kız Çocuk", image: UIImage(named: "lisa")!)
    var mySimpsons = [Simpson]()
    
    var simpsons : Simpson!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
        
        
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
      
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text=mySimpsons[indexPath.row].name
        return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        simpsons = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toShowDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "toShowDetail"{
            let destinationVC = segue.destination as! DetailController
            destinationVC.simpsons=simpsons
        }
    }
    
}

