//
//  NotesStackView.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

let viewC: UIView = {
  let viewC = UIView()
  viewC.translatesAutoresizingMaskIntoConstraints = false
  viewC.isUserInteractionEnabled = true
  
  return viewC
}()

let viewD: UIView = {
  let viewD = UIView()
  viewD.translatesAutoresizingMaskIntoConstraints = false
  viewD.isUserInteractionEnabled = true
  
  return viewD
}()

let viewE: UIView = {
  let viewE = UIView()
  viewE.translatesAutoresizingMaskIntoConstraints = false
  viewE.isUserInteractionEnabled = true
  
  return viewE
}()

let viewF: UIView = {
  let viewF = UIView()
  viewF.translatesAutoresizingMaskIntoConstraints = false
  viewF.isUserInteractionEnabled = true
  
  return viewF
}()

let viewG: UIView = {
  let viewG = UIView()
  viewG.translatesAutoresizingMaskIntoConstraints = false
  viewG.isUserInteractionEnabled = true
  
  return viewG
}()

let viewA: UIView = {
  let viewA = UIView()
  viewA.translatesAutoresizingMaskIntoConstraints = false
  viewA.isUserInteractionEnabled = true
  
  return viewA
}()

let viewB: UIView = {
  let viewB = UIView()
  viewB.translatesAutoresizingMaskIntoConstraints = false
  viewB.isUserInteractionEnabled = true
  
  return viewB
}()

func createStackView() {
  let stackView = UIStackView(arrangedSubviews: [
    viewC, viewD, viewE, viewF, viewG, viewA, viewB
  ])
  stackView.translatesAutoresizingMaskIntoConstraints = false
  stackView.distribution = .fillEqually
  stackView.axis = .vertical
  screenView.addSubview(stackView)
  
  NSLayoutConstraint.activate([
    stackView.topAnchor.constraint(equalTo: screenView.safeAreaLayoutGuide.topAnchor),
    stackView.bottomAnchor.constraint(equalTo: screenView.safeAreaLayoutGuide.bottomAnchor),
    stackView.leadingAnchor.constraint(equalTo: screenView.leadingAnchor),
    stackView.trailingAnchor.constraint(equalTo: screenView.trailingAnchor)
  ])
}
