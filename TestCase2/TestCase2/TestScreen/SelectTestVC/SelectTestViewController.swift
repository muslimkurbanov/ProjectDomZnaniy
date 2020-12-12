//
//  TestViewController.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class SelectTestViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray = [#imageLiteral(resourceName: "russian"), #imageLiteral(resourceName: "math"), #imageLiteral(resourceName: "history"), #imageLiteral(resourceName: "sociology")]
    var testTitleArray = ["Тест 1", "Тест 2", "Тест 3", "Тест 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    


}

extension SelectTestViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SelectTestCollectionViewCell
        let images = imageArray[indexPath.item]
        let titles = testTitleArray[indexPath.item]
        cell.configurate(with: images, title: titles)
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let testViewController = TestViewController()
        navigationController?.pushViewController(testViewController, animated: true)
    }
    
    
    
}
