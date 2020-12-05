//
//  EButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class EButton {
  let buttonE: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("E", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .systemTeal
    
    return button
  }()
  
  func activateButtonE() {
    buttonE.addTarget(self, action: #selector(playE), for: .touchUpInside)
  }
  
  @objc func playE() {
    print("TEST E")
  }
  
  func setButtonE() {
    
    activateButtonE()
    viewE.addSubview(buttonE)
    
    NSLayoutConstraint.activate([
      
      buttonE.centerXAnchor.constraint(equalTo: viewE.centerXAnchor),
      buttonE.centerYAnchor.constraint(equalTo: viewE.centerYAnchor),
      buttonE.widthAnchor.constraint(equalTo: viewE.widthAnchor, multiplier: 0.94),
      buttonE.heightAnchor.constraint(equalTo: viewE.heightAnchor, multiplier: 0.99)
    ])
  }
  
}

