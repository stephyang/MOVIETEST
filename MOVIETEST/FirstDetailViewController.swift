//
//  FirstDetailViewController.swift
//  MOVIETEST
//
//  Created by stephanie yang on 2016/3/28.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class FirstDetailViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDetailLabel: UILabel!

    var i:Int?
    
    var movieIndex: Int = 0
    var movies: Allmovie = Allmovie()
    
    override func viewDidLoad() {
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.movieImage.image = UIImage(named: movies.arrayMovies[movieIndex].movieImage!)
        self.movieDetailLabel.text = movies.arrayMovies[movieIndex].movieDetail
    }
    

}
