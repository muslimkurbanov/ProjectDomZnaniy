//
//  SelectTestCollectionViewCell.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class SelectTestCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var numberOfTestCell: UILabel!
    @IBOutlet weak var subjectImage: UIImageView!
    
    func configurate(with image: UIImage, title: String) {
        subjectImage.image = image
        numberOfTestCell.text = title
    }
}
