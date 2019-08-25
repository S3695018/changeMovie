//
//  ViewController.swift
//  changeMovie
//
//  Created by Bhavesh Hingad on 25/8/19.
//  Copyright © 2019 Bhavesh Hingad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieChange: UISegmentedControl!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeMovieFunction(_ sender: Any)
    {
        switch movieChange.selectedSegmentIndex
        {
        case 0:
            moviePoster.image = UIImage(named: "Avengers")
        case 1:
            moviePoster.image = UIImage(named: "TearsOfSteel")
        default:
            break
        }
    }
    
}

