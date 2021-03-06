//
//  MainViewController.swift
//  Git_Practice
//
//  Created by 신미지 on 2020/12/23.
//

import UIKit

class MainViewController: UIViewController {
  // MARK: - Properties
  let label: UILabel = {
    let lb = UILabel()
    lb.text = "테스트입니다."
    return lb
  }()
  
  // MARK: - Init
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
    addViews()
    setConstraints()
  }
  
  // MARK: - Handlers
  private func setup() {
    view.backgroundColor = .white
  }
  
  private func addViews() {
    view.addSubview(label)
  }
  
  private func setConstraints() {
    labelConstraints()
  }
  
  // MARK: - Constraints
  private func labelConstraints() {
    label.translatesAutoresizingMaskIntoConstraints = false
    label.widthAnchor.constraint(equalToConstant: 200).isActive = true
    label.heightAnchor.constraint(equalToConstant: 100).isActive = true
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
}
