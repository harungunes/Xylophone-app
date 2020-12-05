//
//  MainViewController.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class MainViewController: UIViewController {
  
  
  let cButton = CButton()
  let dButton = DButton()
  let eButton = EButton()
  let fButton = FButton()
  let gButton = GButton()
  let aButton = AButton()
  let bButton = BButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    setViewConstraints(for: view)
    createStackView()
    setButtons()
  }
  
  private func setButtons() {
    cButton.setButtonC()
    dButton.setButtonD()
    eButton.setButtonE()
    fButton.setButtonF()
    gButton.setButtonG()
    aButton.setButtonA()
    bButton.setButtonB()
  }
  
 
  
}

