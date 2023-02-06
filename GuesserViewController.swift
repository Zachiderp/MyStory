//
//  ViewController.swift
//  DGStarter
//
//  Created by Maribel Montejano on 12/13/22.
//

import UIKit

class GuesserViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    
    let page1 = Dinosaur(name: "Origin Story", description: "Braum, also known as 'The Heart of the freljord' originated as a folkstory told by babbling barkeeps and their customers. He was considered a hero that roams the north, protecting those in need with his shield.")
    
    let page2 = Dinosaur(name: "Iconic Quotes", description: "'Stand Behind Braum!', 'If you have a problem, you come ot me first.', 'The darker the night, the brighter the stars.' Braum overall is a protective hero that's almost always positive and uplifting ")
    
    let page3 = Dinosaur(name: "Featured Media", description: "Braum is featured in 6 games by Riot, League of Legends, Legends of Runeterra, Teamfight Tactics, League of Legends: Wild Rift, Project L, and Ruined King. Riot seems to like including Braum in almost every game they release.")
    
    
    //let gallimimus = Dinosaur(name: "Gallimimus", image: UIImage(named: "gallimimus")!, type: "ornithomimid", weight: 450, height: 1.9, diet: "Omnivore", era: "Late Cretaceous", region: "Mongolia", speed: 30)
    //let stegosaurus = Dinosaur(name: "Stegosaurus", image: UIImage(named: "stegosaurus")!, type: "stegosaur", weight: 4990, height: 4.0, diet: "Herbivore", era: "Late Jurassic", region: "North America", speed: 10)
    //let tyrannosaurus = Dinosaur(name: "Tyrannosaurus Rex", image: UIImage(named: "tyrannosaurus")!, type: "theropod", weight: 7030, height: 3.6, diet: "Carnivore", era: "Jurrasic/Cretaceous", region: "North America", speed: 15)
    //let brachiosaurus = Dinosaur(name: "Brachiosaurus", image: UIImage(named: "brachiosaurus")!, type: "sauropod", weight: 60000, height: 12.5, diet: "Omnivore", era: "Late Jurassic", region: "North America", speed: 6)

    // Array for storing Dinosaurs
    var dinosaurs: [Dinosaur] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        dinosaurs = [page1, page2, page3]
        

        
    }

    @IBAction func didTapStory(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.dinosaur = dinosaurs[0]
            } else if tappedView.tag == 1 {
                detailViewController.dinosaur = dinosaurs[1]
            } else if tappedView.tag == 2 {
                detailViewController.dinosaur = dinosaurs[2]
            } else {
                print("no page was tapped, please check your selection.")
            }
        }
    }

    
}

