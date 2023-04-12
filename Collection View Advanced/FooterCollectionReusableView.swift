//
//  FooterCollectionReusableView.swift
//  Collection View Advanced
//
//  Created by MD. SHAYANUL HAQ SADI on 12/4/23.
//

import UIKit

class FooterCollectionReusableView: UICollectionReusableView {
    
    static let footerIdentifier = "footer"
    
    private let footer: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .medium)
//        label.text = "Category"
//        label.backgroundColor = .darkGray
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        footer.backgroundColor = .opaqueSeparator
        addSubview(footer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        footer.frame = bounds
    }
    
    func setup(foot: String) {
        footer.text = foot
    }
}
