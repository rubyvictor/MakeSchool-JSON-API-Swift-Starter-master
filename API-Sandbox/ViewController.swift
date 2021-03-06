//
//  ViewController.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import AlamofireImage
import AlamofireNetworkActivityIndicator

class ViewController: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var rightsOwnerLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var newRandomMovie : Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
        //        exerciseOne()
        //        exerciseTwo()
        //exerciseThree()
        
        
        
        
//        let getPM25FromNEA = "https://api.data.gov.sg/v1/environment/pm25"
//        let headers = ["api-key": "8rb9XOOhII0IpyZKGUqOtJNbU0YKG2pA"]
        let apiToContact = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        
        //This code will call the iTunes top 25 movies endpoint listed above
        Alamofire.request(.GET, apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .Success:
                if let value = response.result.value {
                    let json = JSON(value)
                    print(json)
                    print("HERE IT IS \(json["feed"]["entry"])")
                    
                    var jsonMovies = json["feed"]["entry"].arrayValue
                    
                    var swiftMovies : [Movie] = []
                    
                    for movie in jsonMovies {
                        let newRandomMovie = Movie(json: movie)
                        swiftMovies.append(newRandomMovie)
                    }
                    
                    let randomIndex = Int(arc4random_uniform(UInt32 (swiftMovies.count)))
                  //Yesterday
                    //now, self.newRandomMovie = nil
                    //self.newDisplayMovie(swiftMovies[randomIndex]) displays new movie
                    //... but self.newRandomMovie = nil -> Still true
                    
                  //Today
                    self.newRandomMovie = swiftMovies[randomIndex] //self.newRandomMovie != nil
                    self.newDisplayMovie(self.newRandomMovie)
                    self.loadPoster(self.newRandomMovie.poster)
                    // need self in a closure.
                }
                
                // Do what you need to with JSON here!
                // The rest is all boiler plate code you'll use for API requests
                
                
                
            case .Failure(let error):
                print(error)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Updates the image view when passed a url string
    func loadPoster(urlString: String) {
        posterImageView.af_setImageWithURL(NSURL(string: urlString)!)
        
    }
    
    
    @IBAction func viewOniTunesPressed(sender: AnyObject) {
        
    }
    
    func newDisplayMovie(movie: Movie) {
        
        movieTitleLabel.text = movie.name
        
    }
    
}