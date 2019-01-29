//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//MARK: step 4 adopt the protocol here
class ClassAVC: UIViewController,ClassBVCDelegate {
    
    
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nav = segue.destination as? UINavigationController, let classBVC = nav.topViewController as? ClassBVC {
            classBVC.delegate = self
        }
        
    }
    
    //MARK: step 6 finally use the method of the contract here

    

}

