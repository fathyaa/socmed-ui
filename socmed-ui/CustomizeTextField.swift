//
//  CustomizeTextField.swift
//  socmed-ui
//
//  Created by Phincon on 17/02/23.
//

import UIKit

class CustomizeTextField: UITableViewCell {
    static let identifier = "CustomizeTextField"
    
    var search : UITextField = {
        var s = UITextField()
        return s
    }()
    
    var mic : UIImageView = {
        var m = UIImageView()
        return m
    }()
    
    var searchImage : UIImageView = {
        var si = UIImageView()
        return si
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupSearch(){
        self.addSubview(search)
        self.search.translatesAutoresizingMaskIntoConstraints = false
        self.search.topAnchor.constraint(equalTo: self.topAnchor, constant: 19).isActive = true
        self.search.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.search.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.search.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        self.search.layer.borderColor = UIColor(named: "AbuAbu")?.cgColor
        self.search.layer.borderWidth = 2
        self.search.layer.cornerRadius = 6
        self.search.placeholder = "Search"
        self.search.heightAnchor.constraint(equalToConstant: 57).isActive = true
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: self.search.frame.height))
        self.search.leftView = paddingView
        self.search.leftViewMode = .always
    }
    
    func setupMicButton(){
        self.addSubview(search)
        self.search.addSubview(mic)
        
        self.mic.translatesAutoresizingMaskIntoConstraints = false
        self.mic.rightAnchor.constraint(equalTo: self.search.rightAnchor, constant: -19).isActive = true
        self.mic.topAnchor.constraint(equalTo: self.search.topAnchor, constant: 19).isActive = true
    }
    
    func setupSearchImage(){
        self.addSubview(search)
        self.search.addSubview(searchImage)
        
        self.searchImage.translatesAutoresizingMaskIntoConstraints = false
        self.searchImage.leftAnchor.constraint(equalTo: self.search.leftAnchor, constant: 15).isActive = true
        self.searchImage.topAnchor.constraint(equalTo: self.search.topAnchor, constant: 19).isActive = true
        self.searchImage.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.searchImage.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
}
