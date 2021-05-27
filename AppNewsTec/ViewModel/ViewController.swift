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
    
    
    //MARK: Variables:
    
    let newsTypesVC = NewsTypesViewController()
    let requestApi = RequestNews()
    var listNews = [Article]()
    var linkUrl = ""
    
    
    
    //MARK: LifeCycle:
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        posterNews.dataSource = self
        posterNews.delegate = self
        listNews = requestApi.makeRequest(url: self.linkUrl)
    }
    

    
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
        celulaPosters.posterNews.af_setImage(withURL: (imageUrl)!)
        celulaPosters.titleNews.text = listNews[indexPath.row].title
        celulaPosters.overviewNews.text = listNews[indexPath.row].articleDescription
        
        return celulaPosters
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        UIApplication.shared.open(URL(string: listNews[indexPath.row].url)!)
        
    }
    
    
   
}

