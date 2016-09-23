//
//  FirstViewController.swift
//  MOVIETEST
//
//  Created by stephanie yang on 2016/3/28.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    var movies: Allmovie = Allmovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       self.automaticallyAdjustsScrollViewInsets = false
        
        tableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.arrayMovies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MovieTableViewCell") as! MovieTableViewCell

        cell.movieImage.image = UIImage(named: movies.arrayMovies[indexPath.row].movieImage!)
        cell.movieName.text = movies.arrayMovies[indexPath.row].movieName
        cell.movieDate.text = movies.arrayMovies[indexPath.row].movieDate

    
            return cell

     }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "showFirstDetail" {
            let indexPath = self.tableView.indexPathForSelectedRow
            let destVC = segue.destinationViewController as! FirstDetailViewController
            destVC.movieIndex = (indexPath?.row)!
            
//        }
    }
}