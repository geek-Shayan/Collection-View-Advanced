//
//  ViewController.swift
//  Collection View Advanced
//
//  Created by MD. SHAYANUL HAQ SADI on 29/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    static let cellIdentifier = "cell"
    static let categoryHeaderID = "categoryHeaderID"
    static let categoryHeaderID2 = "categoryHeaderID2"
//    static let headerIdentifier = "header"
    
    private let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical

        let layout = UICollectionViewCompositionalLayout { sectionNumber, env in
            
            if (sectionNumber == 0) {
                
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets.trailing = 2
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)), subitems: [item])
                //            (layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .paging
                
//                section.boundarySupplementaryItems = [ NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: categoryHeaderID2, alignment: .topLeading)]
                
                return section
            }
        
            else if (sectionNumber == 1) {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(150)))
                item.contentInsets.trailing = 16
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(500)), subitems: [item])
//                group.contentInsets.leading = 16
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets.leading = 16
                
                section.boundarySupplementaryItems = [ NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: categoryHeaderID, alignment: .topLeading)]
                
                return section
            }
            
            else if (sectionNumber == 2) {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets.trailing = 32
                                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.80), heightDimension: .absolute(120)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets.leading = 16

                return section
            }
            
            else {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .absolute(300)))
                item.contentInsets.trailing = 16
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
//                section.contentInsets.leading = 16
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0
                )
                
                return section
            }
        }
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: ViewController.cellIdentifier)
//        collection.register(UICollectionReusableView.self, forSupplementaryViewOfKind: ViewController.categoryHeaderID, withReuseIdentifier: ViewController.headerIdentifier)
        collection.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: ViewController.categoryHeaderID, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier)
//        collection.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: ViewController.categoryHeaderID2, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier)
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = .darkGray
        navigationItem.title = "TITLE"
 
        view.addSubview(collectionView)
    }
    
    override func viewDidLayoutSubviews() {
        collectionView.frame = view.bounds
    }
}


extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        else if section == 1 {
            return 8
        }
        else if section == 2 {
            return 4
        }
        else {
            return 3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
        header.setup(head: "Categories")
        return header
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 10, left: 100, bottom: 10, right: 10)
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.cellIdentifier, for: indexPath)
        cell.backgroundColor = .orange
        return cell
    }
}


extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = UIViewController()
        
        controller.view.backgroundColor = indexPath.item == 0 ? .yellow : indexPath.item == 1 ? .blue : .red
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}


//extension ViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 50, height: 50)
//    }
//}
