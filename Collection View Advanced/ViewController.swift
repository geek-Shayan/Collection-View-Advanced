//
//  ViewController.swift
//  Collection View Advanced
//
//  Created by MD. SHAYANUL HAQ SADI on 29/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    static let cellIdentifier = "cell"
    static let headerKind = "headerKind"
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
                
                section.boundarySupplementaryItems = [ NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: headerKind, alignment: .topLeading)]
                
                return section
            }
            
            else if (sectionNumber == 2) {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets.trailing = 32
                                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.80), heightDimension: .absolute(120)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets.leading = 16
                
                section.boundarySupplementaryItems = [ NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: headerKind, alignment: .topLeading)]

                return section
            }
            
            else {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .absolute(300)))
                item.contentInsets.trailing = 16
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
//                section.contentInsets.leading = 16
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0
                )
                
                return section
            }
        }
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: ViewController.cellIdentifier)
        collection.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
//        collection.register(UICollectionReusableView.self, forSupplementaryViewOfKind: ViewController.headerKind, withReuseIdentifier: ViewController.headerIdentifier)
        collection.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: ViewController.headerKind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier)
                                                                                       
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
        if indexPath.section == 1 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
            header.setup(head: "Categories")
            return header
        }
        
        else {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
            header.setup(head: "Latest")
            return header
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 10, left: 100, bottom: 10, right: 10)
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 && indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: "photo 1 s1", and: "Food")
            return cell
        }
        if indexPath.section == 0 && indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: "photo 2 s1", and: "Fruit")
            return cell
        }
        if indexPath.section == 0 && indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: "photo 1 s1", and: "Fresh")
            return cell
        }
        if indexPath.section == 1 && indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: "burger 1 s2", and: "Burger")
            return cell
        }
        if indexPath.section == 1 && indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: "burger 2 s2", and: "Burger")
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.cellIdentifier, for: indexPath)
            cell.backgroundColor = .orange
            return cell
        }
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
