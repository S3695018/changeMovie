//
//  ViewController.swift
//  changeMovie
//
//  Created by Bhavesh Hingad on 25/8/19.
//  Copyright © 2019 Bhavesh Hingad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    //connection to the modal
    
    var movie = Movie.movie1
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieName.text = movie.detail.title
        moviePoster.image = UIImage(named: movie.detail.moviePoster)
    }
    @IBAction func changeMovie(_ sender: Any)
    {
        if(movie == Movie.movie1)
        {
            movie = Movie.movie2
            updateMovieDetails()
        }
        else
        {
            movie = Movie.movie1
            updateMovieDetails()
        }
    }
    
    func updateMovieDetails()
    {
        movieName.text = movie.detail.title
        moviePoster.image = UIImage(named: movie.detail.moviePoster)
    }
}

