//
//  DetailController.swift
//  SimpsonBook
//
//  Created by aydoğan pederli on 2.02.2021.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    
    var simpsons : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        jobLabel.text=simpsons?.job
        nameLabel.text=simpsons?.name
        imageLabel.image=simpsons?.image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
