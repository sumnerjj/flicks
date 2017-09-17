//
//  DetailViewController.swift
//  flicks
//
//  Created by Justin Sumner on 9/15/17.
//  Copyright © 2017 Justin Sumner. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movie: NSDictionary!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie)
        let title = movie["title"] as? String
        let overview = movie["overview"] as? String
        titleLabel.text = title
        overviewLabel.text = overview
        
        let base_url = "https://image.tmdb.org/t/p/w500"
        if let posterPath = movie["poster_path"] as? String {
            let imageUrl = URL(fileURLWithPath: base_url + posterPath)
            posterImageView.setImageWith(imageUrl as URL)
            print(imageUrl)
        }



        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
