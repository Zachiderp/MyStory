//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Zacharias Lafond on 2/5/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dinosaur: Dinosaur?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let dinosaur = dinosaur {
                print(dinosaur.name)
            }
        
        if let dinosaur = dinosaur {
            secName.text = dinosaur.name
            secDescrip.text = dinosaur.description
            
        }
    }
    
    @IBOutlet weak var secName: UILabel!
    
    @IBOutlet weak var secDescrip: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
