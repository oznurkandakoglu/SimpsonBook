//
//  DetailsVC.swift
//  SimpsonBook

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var seletecedSimpson : Simpson?
    @IBOutlet weak var jobLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = seletecedSimpson?.name
        jobLabel.text = seletecedSimpson?.job
        imageView.image = seletecedSimpson?.image
    }
 

}

