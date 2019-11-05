//
//  ViewController.swift
//  voiceover-paging
//
//  Created by Matthew Nespor on 11/4/19.
//  Copyright © 2019 Matthew Nespor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

extension ViewController: UICollectionViewDataSource {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return colors.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "blah", for: indexPath)
    cell.contentView.backgroundColor = colors[indexPath.item]
    return cell
  }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return collectionView.frame.size
  }
}
