//
//  NewsTypesViewController.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 26/05/21.
//

import UIKit

public class NewsTypesViewController: UIViewController {
    
    //MARK: LifeCycle:
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        proximatela = segue.destination as? ViewController
        if segue.identifier == "segueTecnology"{
            proximatela?.linkUrl = urlTech
        }else{
            proximatela?.linkUrl = urlSport
        }
    
    }

    //MARK: Variables:
    var proximatela: ViewController?
//    var topic: String = ""
    let urlTech: String = "https://newsapi.org/v2/everything?q=tecnologia&language=pt&apiKey="

    let urlSport: String = "https://newsapi.org/v2/everything?q=sports&language=pt&apiKey="
    
    
    //MARK: Functions:

//    func configureTopic() -> String {
//        print("TOPICCCCCCCCCCCCC", topic)
//        return topic
//    }

}
