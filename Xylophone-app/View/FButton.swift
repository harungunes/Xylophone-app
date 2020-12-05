//
//  FButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class FButton {
  let buttonF: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("F", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .green
    
    return button
  }()
  
  func activateButtonF() {
    buttonF.addTarget(self, action: #selector(playF), for: .touchUpInside)
  }
  
  @objc func playF() {
    mainViewController.playSound(note: "F")
  }
  
  func setButtonF() {
    
    activateButtonF()
    viewF.addSubview(buttonF)
    
    NSLayoutConstraint.activate([
      
      buttonF.centerXAnchor.constraint(equalTo: viewF.centerXAnchor),
      buttonF.centerYAnchor.constraint(equalTo: viewF.centerYAnchor),
      buttonF.widthAnchor.constraint(equalTo: viewF.widthAnchor, multiplier: 0.91),
      buttonF.heightAnchor.constraint(equalTo: viewF.heightAnchor, multiplier: 0.9)
    ])
  }
  
}

