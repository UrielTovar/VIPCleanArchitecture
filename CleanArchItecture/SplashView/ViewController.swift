//
//  ViewController.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = UIColor(named: "MidnightGreen")
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
      let vc = ListMoviesView(nibName: "ListMoviesView", bundle: nil)
      self.navigationController?.pushViewController(vc, animated: true)
    }
    
  }
  
}
