//
//  NewsTypesViewController.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 26/05/21.
//

import UIKit

public class NewsTopicsViewController: UIViewController {
    
    

    //MARK: Variables:
    
    var nextScreenVC: ViewController?


    let urlTech = "q=tecnologia"
    let urlSport = "q=sports"
    let urlScience = "q=science"
    let urlTourism = "q=turismo"
    
    //MARK: LifeCycle:
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        nextScreenVC = segue.destination as? ViewController
        navigationItem.title = "Categorias"
        
        if segue.identifier == "segueTecnology"{
            nextScreenVC?.getCategory = "Tecnologia"
            nextScreenVC?.linkUrl = urlTech
            
        }else if segue.identifier == "segueSports"{
            nextScreenVC?.getCategory = "Esportes"
            nextScreenVC?.linkUrl = urlSport
            
        }else if segue.identifier == "segueScience"{
            nextScreenVC?.getCategory = "Ciência"
            nextScreenVC?.linkUrl = urlScience
            
        }else if segue.identifier == "segueTourism"{
            nextScreenVC?.getCategory = "Turismo"
            nextScreenVC?.linkUrl = urlTourism
        }
        
        
    }
    

}
