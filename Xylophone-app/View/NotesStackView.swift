//
//  NotesStackView.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class NotesStackView {
  
  let viewC: UIView = {
    let viewC = UIView()
    viewC.translatesAutoresizingMaskIntoConstraints = false
    viewC.backgroundColor = .red
    viewC.isUserInteractionEnabled = true
    
    return viewC
  }()
  
  let viewD: UIView = {
    let viewD = UIView()
    viewD.translatesAutoresizingMaskIntoConstraints = false
    viewD.backgroundColor = .orange
    viewD.isUserInteractionEnabled = true
    
    return viewD
  }()
  
  let viewE: UIView = {
    let viewE = UIView()
    viewE.translatesAutoresizingMaskIntoConstraints = false
    viewE.backgroundColor = .yellow
    viewE.isUserInteractionEnabled = true
    
    return viewE
  }()
  
  let viewF: UIView = {
    let viewF = UIView()
    viewF.translatesAutoresizingMaskIntoConstraints = false
    viewF.backgroundColor = .green
    viewF.isUserInteractionEnabled = true
    
    return viewF
  }()
  
  let viewG: UIView = {
    let viewG = UIView()
    viewG.translatesAutoresizingMaskIntoConstraints = false
    viewG.backgroundColor = .purple
    viewG.isUserInteractionEnabled = true
    
    return viewG
  }()
  
  let viewA: UIView = {
    let viewA = UIView()
    viewA.translatesAutoresizingMaskIntoConstraints = false
    viewA.backgroundColor = .blue
    viewA.isUserInteractionEnabled = true
    
    return viewA
  }()
  
  let viewB: UIView = {
    let viewB = UIView()
    viewB.translatesAutoresizingMaskIntoConstraints = false
    viewB.backgroundColor = .magenta
    viewB.isUserInteractionEnabled = true
    
    return viewB
  }()
  
  func createStackView() -> UIStackView {
    let stackView = UIStackView(arrangedSubviews: [
      viewC, viewD, viewE, viewF, viewG, viewA, viewB
    ])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    
    return stackView
  }
}
