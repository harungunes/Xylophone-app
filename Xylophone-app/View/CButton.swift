//
//  CButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

let mainViewController = MainViewController()

class CButton {
  
  let buttonC: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("C", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .red
    
    return button
  }()
  
  func activateButtonC() {
    buttonC.addTarget(self, action: #selector(playC), for: .touchUpInside)
  }
  
  @objc func playC() {
    mainViewController.playSound(note: "C")
  }
  
  func setButtonC() {
    
    activateButtonC()
    viewC.addSubview(buttonC)
    
    NSLayoutConstraint.activate([
      
      buttonC.centerXAnchor.constraint(equalTo: viewC.centerXAnchor),
      buttonC.centerYAnchor.constraint(equalTo: viewC.centerYAnchor),
      buttonC.widthAnchor.constraint(equalTo: viewC.widthAnchor, multiplier: 0.99),
      buttonC.heightAnchor.constraint(equalTo: viewC.heightAnchor, multiplier: 0.99)
    ])
  }
  
}
