//
//  GButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class GButton {
  let buttonG: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("G", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .purple
    
    return button
  }()
  
  func activateButtonG() {
    buttonG.addTarget(self, action: #selector(playG), for: .touchUpInside)
  }
  
  @objc func playG() {
    mainViewController.playSound(note: "G")
  }
  
  func setButtonG() {
    
    activateButtonG()
    viewG.addSubview(buttonG)
    
    NSLayoutConstraint.activate([
      
      buttonG.centerXAnchor.constraint(equalTo: viewG.centerXAnchor),
      buttonG.centerYAnchor.constraint(equalTo: viewG.centerYAnchor),
      buttonG.widthAnchor.constraint(equalTo: viewG.widthAnchor, multiplier: 0.88),
      buttonG.heightAnchor.constraint(equalTo: viewG.heightAnchor, multiplier: 0.9)
    ])
  }
  
}

