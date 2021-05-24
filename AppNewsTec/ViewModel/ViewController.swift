//
//  ViewController.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    
    
    //MARK: LifeCycle:
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        posterNews.dataSource = self
        posterNews.delegate = self
        listNews = requestApi.makeRequest()
        
        
    }
    
    
    //MARK: Variables:
    
    let requestApi = RequestNews()
    var listNews = [New]()
    
    
    //MARK: Outlets:
    
    @IBOutlet weak var posterNews: UICollectionView!
    
    //MARK: Functions:
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listNews.count
        
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celulaPosters = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewsCollectionViewCell
        let imagePosterUrl = listNews[indexPath.row].urlToImage
        let imageUrl = URL(string: "\(imagePosterUrl)")
        celulaPosters.posterNews.af_setImage(withURL: imageUrl!)
        celulaPosters.titleNews.text = listNews[indexPath.row].title
        celulaPosters.overviewNews.text = listNews[indexPath.row].articleDescription
        
        return celulaPosters
    }
    

}

