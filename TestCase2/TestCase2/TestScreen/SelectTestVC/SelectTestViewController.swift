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
    var testTitleArray = ["Тест 1:", "Тест 2:", "Тест 3:", "Тест 4:"]
    var titlesArray = ["Русский язык", "Математика", "История", "Общество"]
//    var VCS = [TestMathVC(): "TestMath", TestRussianVC(): "TestRussian", TestSociologyVC(): "TestSociology", TestHistoryVC(): "TestHistory"]
    var viewControllers = [TestRussianVC(), TestMathVC(), TestHistoryVC(), TestSociologyVC()]
    var keys = ["TestRussian", "TestMath",  "TestHistory", "TestSociology"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: view.topAnchor)
//        ])
//        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
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
//        let images = imageArray[indexPath.item]
//        let titles = testTitleArray[indexPath.item]
        cell.configurate(with: imageArray[indexPath.item], testTitle: testTitleArray[indexPath.item], title: titlesArray[indexPath.item])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        pushToTest(type: viewControllers[indexPath.row], key: keys[indexPath.row])
    }
}

extension SelectTestViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: 414)
    }
    
    
    
}

extension SelectTestViewController {
    func pushToTest(type: UIViewController, key: String) {
        let sb = UIStoryboard(name: "Test", bundle: nil)
        let vc = sb.instantiateViewController(identifier: key)
        navigationController?.pushViewController(vc, animated: true)
    }
}
