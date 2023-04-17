//
//  ViewController.swift
//  Collection View Advanced
//
//  Created by MD. SHAYANUL HAQ SADI on 29/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var isLoading = false
    private var isLastPage = false //
    
    private let itemsPerPage = 10 // loads 10 data per page cycle
    private var currentPage = 0
    
    private var s5data: [dataType] = [dataType(image: "swarma s5", label: "Swarma 1"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 2"),
                                      dataType(image: "kabab s5", label: "Kabab 3"),
                                      dataType(image: "swarma s5", label: "Swarma 4"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 5"),
                                      dataType(image: "kabab s5", label: "Kabab 6"),
                                      dataType(image: "swarma s5", label: "Swarma 7"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 8"),
                                      dataType(image: "kabab s5", label: "Kabab 9"),
                                      dataType(image: "swarma s5", label: "Swarma 10"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 11"),
                                      dataType(image: "kabab s5", label: "Kabab 12"),
                                      dataType(image: "swarma s5", label: "Swarma 13"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 14"),
                                      dataType(image: "kabab s5", label: "Kabab 15"),
                                      dataType(image: "swarma s5", label: "Swarma 16"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 17"),
                                      dataType(image: "kabab s5", label: "Kabab 18"),
                                      dataType(image: "swarma s5", label: "Swarma 19"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 20"),
                                      dataType(image: "kabab s5", label: "Kabab 21"),
                                      dataType(image: "swarma s5", label: "Swarma 22"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 23"),
                                      dataType(image: "kabab s5", label: "Kabab 24"),
                                      dataType(image: "swarma s5", label: "Swarma 25"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 26"),
                                      dataType(image: "kabab s5", label: "Kabab 27"),
                                      dataType(image: "swarma s5", label: "Swarma 28"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 29"),
                                      dataType(image: "kabab s5", label: "Kabab 30"),
                                      dataType(image: "swarma s5", label: "Swarma 31"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 32"),
                                      dataType(image: "kabab s5", label: "Kabab 33"),
                                      dataType(image: "swarma s5", label: "Swarma 34"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 35"),
                                      dataType(image: "kabab s5", label: "Kabab 36"),
                                      dataType(image: "swarma s5", label: "Swarma 37"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 38"),
                                      dataType(image: "kabab s5", label: "Kabab 39"),
                                      dataType(image: "swarma s5", label: "Swarma 40"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 41"),
                                      dataType(image: "kabab s5", label: "Kabab 42"),
                                      dataType(image: "swarma s5", label: "Swarma 43"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 44"),
                                      dataType(image: "kabab s5", label: "Kabab 45"),
                                      dataType(image: "swarma s5", label: "Swarma 46"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 47"),
                                      dataType(image: "kabab s5", label: "Kabab 48"),
                                      dataType(image: "swarma s5", label: "Swarma 49"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 50"),
                                      dataType(image: "kabab s5", label: "Kabab 51"),
                                      dataType(image: "swarma s5", label: "Swarma 52"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 53"),
                                      dataType(image: "kabab s5", label: "Kabab 54"),
                                      dataType(image: "swarma s5", label: "Swarma 55"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 56"),
                                      dataType(image: "kabab s5", label: "Kabab 57"),
                                      dataType(image: "swarma s5", label: "Swarma 58"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 59"),
                                      dataType(image: "kabab s5", label: "Kabab 60"),
                                      dataType(image: "swarma s5", label: "Swarma 61"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 62"),
                                      dataType(image: "kabab s5", label: "Kabab 63"),
                                      dataType(image: "swarma s5", label: "Swarma 64"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 65"),
                                      dataType(image: "kabab s5", label: "Kabab 66"),
                                      dataType(image: "swarma s5", label: "Swarma 67"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 68"),
                                      dataType(image: "kabab s5", label: "Kabab 69"),
                                      dataType(image: "swarma s5", label: "Swarma 70"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 71"),
                                      dataType(image: "kabab s5", label: "Kabab 72"),
                                      dataType(image: "swarma s5", label: "Swarma 73"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 74"),
                                      dataType(image: "kabab s5", label: "Kabab 75"),
                                      dataType(image: "swarma s5", label: "Swarma 76"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 77"),
                                      dataType(image: "kabab s5", label: "Kabab 78"),
                                      dataType(image: "swarma s5", label: "Swarma 79"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 80"),
                                      dataType(image: "kabab s5", label: "Kabab 81"),
                                      dataType(image: "swarma s5", label: "Swarma 82"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 83"),
                                      dataType(image: "kabab s5", label: "Kabab 84"),
                                      dataType(image: "swarma s5", label: "Swarma 85"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 86"),
                                      dataType(image: "kabab s5", label: "Kabab 87"),
                                      dataType(image: "swarma s5", label: "Swarma 88"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 89"),
                                      dataType(image: "kabab s5", label: "Kabab 90"),
                                      dataType(image: "swarma s5", label: "Swarma 91"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 92"),
                                      dataType(image: "kabab s5", label: "Kabab 93"),
                                      dataType(image: "swarma s5", label: "Swarma 94"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 95"),
                                      dataType(image: "kabab s5", label: "Kabab 96"),
                                      dataType(image: "swarma s5", label: "Swarma 97"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 98"),
                                      dataType(image: "kabab s5", label: "Kabab 99"),
                                      dataType(image: "swarma s5", label: "Swarma 100"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 101"),
                                      dataType(image: "kabab s5", label: "Kabab 102"),
                                      dataType(image: "swarma s5", label: "Swarma 103"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 104"),
                                      dataType(image: "kabab s5", label: "Kabab 105"),
                                      dataType(image: "swarma s5", label: "Swarma 106"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 107"),
                                      dataType(image: "kabab s5", label: "Kabab 108"),
                                      dataType(image: "swarma s5", label: "Swarma 109"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 110"),
                                      dataType(image: "kabab s5", label: "Kabab 111"),
                                      dataType(image: "swarma s5", label: "Swarma 112"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 113"),
                                      dataType(image: "kabab s5", label: "Kabab 114"),
                                      dataType(image: "swarma s5", label: "Swarma 115"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 116"),
                                      dataType(image: "kabab s5", label: "Kabab 117"),
                                      dataType(image: "swarma s5", label: "Swarma 118"),
                                      dataType(image: "chickenFries s5", label: "Chicken Fry 119"),
                                      dataType(image: "kabab s5", label: "Kabab 120")]

    
    var celldata: [dataType] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    
    
    struct dataType {
        let image: String
        let label: String
    }
    
    
    static let cellIdentifier = "cell"
    static let headerKind = "headerKind"
    static let footerKind = "footerKind"
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
                
                let footerHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(50))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: headerKind, alignment: .topLeading)
//                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: footerKind, alignment: .bottom)

                section.boundarySupplementaryItems = [header] //, footer
                
                return section
            }
            
            else if (sectionNumber == 2) {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets.trailing = 32
                                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.80), heightDimension: .absolute(120)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets.leading = 16

                let footerHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(50))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: headerKind, alignment: .topLeading)
//                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: footerKind, alignment: .bottomLeading)
                
                section.boundarySupplementaryItems = [header] //, footer
                
                return section
            }
            
            else if (sectionNumber == 3) {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .absolute(200)))
                item.contentInsets.trailing = 16
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0)
                
//                let footerHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(50))
//                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: headerKind, alignment: .top)
//                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: footerKind, alignment: .bottom)
//
//                section.boundarySupplementaryItems = [header, footer]
                
                return section
            }
            
            else {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)))
                item.contentInsets.trailing = 16
                item.contentInsets.bottom = 8
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = .init(top: 0, leading: 16, bottom: -8, trailing: 0)
            
                let footerHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(50))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: headerKind, alignment: .topTrailing)
                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerHeaderSize, elementKind: footerKind, alignment: .bottomTrailing)
                
                section.boundarySupplementaryItems = [header, footer]
                
                return section
            }
        }
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: ViewController.cellIdentifier)
        collection.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
//        collection.register(UICollectionReusableView.self, forSupplementaryViewOfKind: ViewController.headerKind, withReuseIdentifier: ViewController.headerIdentifier)
        collection.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: ViewController.headerKind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier)
        collection.register(FooterCollectionReusableView.self, forSupplementaryViewOfKind: ViewController.footerKind, withReuseIdentifier: FooterCollectionReusableView.footerIdentifier)
                                                                                       
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = .darkGray
        navigationItem.title = "FOOD DELIVERY"
 
        view.addSubview(collectionView)
        
        loadData(page: currentPage)
    }
    
    private func loadData(page: Int) {
        isLoading = true

        if s5data.isEmpty {
//            fatalError("Null data error!")
            print("Null data error!")
        }
        else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
                self?.isLoading = false
                self?.currentPage += 1
                let newData = (page * (self?.itemsPerPage)!)..<((page + 1) * (self?.itemsPerPage)!)
                print("newData", newData)
                
                self?.celldata.append(contentsOf: newData.map{ (self?.s5data[$0])! })
                self?.isLastPage = newData.upperBound >= (self?.s5data.count)! // Assumes 100 total items //s5data.count
                
//                self?.collectionView.reloadSections(IndexSet(integer: 4))
//                self?.collectionView.reloadData()
            }
        }
//        collectionView.reloadSections(IndexSet(integer: 4))
        collectionView.reloadData()
        
        print("celldata", celldata)
    }
    
    override func viewDidLayoutSubviews() {
        collectionView.frame = view.bounds
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if decelerate {
            checkForLoadMoreData()
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        checkForLoadMoreData()
    }
    
    private func checkForLoadMoreData() {
        guard !isLoading && !isLastPage else { return }
        
        let offsetY = collectionView.contentOffset.y
        let contentHeight = collectionView.contentSize.height
        let height = collectionView.frame.size.height

        print(offsetY, contentHeight, height)
        if offsetY > contentHeight - height {
            loadData(page: currentPage)
        }
    }
}


extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        else if section == 1 {
            return 8
        }
        else if section == 2 {
            return 6
        }
        else if section == 3 {
            return 4
        }
        else {
            return celldata.count
//            return s5data.count
//            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        print("supp indexPath row, section, item", indexPath.row, indexPath.section, indexPath.item)
        switch kind {
            case ViewController.headerKind:
                if indexPath.section == 1 {
                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
                    header.setup(head: "Categories header")
                    return header
                }
                
                if indexPath.section == 2 {
                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
                    header.setup(head: "Latest header")
                    return header
                }
                
                if indexPath.section == 4 {
                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
                    header.setup(head: "Card header")
                    return header
                }
                
                else {
                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
                    header.setup(head: "Header")
                    return header
                }
                
            case ViewController.footerKind:
                if indexPath.section == 1 {
                    let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterCollectionReusableView.footerIdentifier, for: indexPath) as! FooterCollectionReusableView
                    footer.setup(foot: "Categories footer", indicatorFlag: false)
                    return footer
                }
                
                if indexPath.section == 2 {
                    let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterCollectionReusableView.footerIdentifier, for: indexPath) as! FooterCollectionReusableView
                    footer.setup(foot: "Latest footer", indicatorFlag: false)
                    return footer
                }
//
                if indexPath.section == 4 {
                    let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterCollectionReusableView.footerIdentifier, for: indexPath) as! FooterCollectionReusableView
                    footer.setup(foot: "", indicatorFlag: isLoading) //Card footer
                    return footer
                }
                
                else {
                    let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterCollectionReusableView.footerIdentifier, for: indexPath) as! FooterCollectionReusableView
                    footer.setup(foot: "Footer", indicatorFlag: false)
                    return footer
                }
                
            default :
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
                header.setup(head: "Default header")
                return header
        }
    }
        
        
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 10, left: 100, bottom: 10, right: 10)
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        print("Cell indexPath row, section, item", indexPath.row, indexPath.section, indexPath.item)
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
        
        if indexPath.section == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
            cell.setup(with: celldata[indexPath.item].image, and: celldata[indexPath.item].label) //dynamic
            return cell
        }
        
//        if indexPath.section == 4 && indexPath.item == 0 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
//            cell.setup(with: "swarma s5", and: "Swarma")
//            return cell
//        }
//        if indexPath.section == 4 && indexPath.item == 1 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
//            cell.setup(with: "chickenFries s5", and: "Chicken Fries")
//            return cell
//        }
//        if indexPath.section == 4 && indexPath.item == 2 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
//            cell.setup(with: "kabab s5", and: "Kabab")
//            return cell
//        }
//        if indexPath.section == 4 && indexPath.item == 3 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
//            cell.setup(with: "swarma s5", and: "Swarma")
//            return cell
//        }
//        if indexPath.section == 4 && indexPath.item == 4 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
//            cell.setup(with: "chickenFries s5", and: "Chicken Fries")
//            return cell
//        }
        
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
