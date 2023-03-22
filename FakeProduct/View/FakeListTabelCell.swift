//
//  FakeListTabelCell.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import UIKit
class FakeListTableCell: UITableViewCell {
    
    static let identifier = "FakeListTableCell"
    public var productName: UILabel = {
        let lable = UILabel()
        return lable
    }()
    
    public let produtImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        ListConstarinst()
    }

    func ListConstarinst() {
        productName.layer.cornerRadius = 10
        productName.layer.masksToBounds = true
        productName.backgroundColor = .systemGray
        productName.translatesAutoresizingMaskIntoConstraints = false
        productName.font = UIFont.systemFont(ofSize: 20)
        contentView.addSubview(productName)
        contentView.addSubview(produtImageView)
        NSLayoutConstraint.activate([
            produtImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            produtImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            produtImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            produtImageView.bottomAnchor.constraint(equalTo: productName.topAnchor),
            productName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            productName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            productName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            productName.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}
