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
    @IBOutlet weak var subjectName: UILabel!
    
    
    
    func configurate(with image: UIImage, testTitle: String, title: String) {
        subjectImage.image = image
        numberOfTestCell.text = testTitle
        subjectName.text = title
    }
}
