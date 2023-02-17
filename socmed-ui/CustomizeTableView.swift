//
//  TableViewCell.swift
//  socmed-ui
//
//  Created by Phincon on 17/02/23.
//

import UIKit

class CustomizeTableView: UITableViewCell {
    static let identifier = "CustomizeTableView"
    let bgView : UIView = {
        let bgv = UIView()
        return bgv
    }()
    
    var profilePicture : UIImageView = {
        var pfp = UIImageView()
        return pfp
    }()
    
    var username : UILabel = {
        var u = UILabel()
        return u
    }()
    
    var postedTime : UILabel = {
        var pt = UILabel()
        return pt
    }()
    
    var post : UILabel = {
        var p = UILabel()
        return p
    }()
    
    var likeButton : UIImageView = {
        var lb = UIImageView()
        return lb
    }()
    
    var likeLabel : UILabel = {
        var ll = UILabel()
        return ll
    }()
    
    var commentButton : UIImageView = {
        var cb = UIImageView()
        return cb
    }()
    
    var commentLabel : UILabel = {
        var cl = UILabel()
        return cl
    }()
    
    var shareButton : UIImageView = {
        var sb = UIImageView()
        return sb
    }()
    
    var messageButton : UIImageView = {
        var mb = UIImageView()
        return mb
    }()


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupComponents(){
        self.addSubview(bgView)
        self.bgView.addSubview(profilePicture)
        self.bgView.addSubview(username)
        self.bgView.addSubview(postedTime)
        self.bgView.addSubview(post)
        self.bgView.addSubview(likeButton)
        self.bgView.addSubview(likeLabel)
        self.bgView.addSubview(commentButton)
        self.bgView.addSubview(commentLabel)
        self.bgView.addSubview(shareButton)
        self.bgView.addSubview(messageButton)
        
        setupBgView()
        setupProfilePicture()
        setupUsername()
        setupPostedTime()
        setupPost()
        setupLikeButton()
        setupLikeLabel()
        setupCommentButton()
        setupCommentLabel()
        setupShareButton()
        setupMessageButton()
    }

    func setupBgView(){
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        self.bgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18).isActive = true
        self.bgView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.bgView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18).isActive = true
        self.bgView.layer.borderWidth = 2
        self.bgView.layer.borderColor = UIColor(named: "AbuAbu")?.cgColor
        self.bgView.layer.cornerRadius = 6
    }
    
    func setupProfilePicture(){
        self.profilePicture.translatesAutoresizingMaskIntoConstraints = false
        self.profilePicture.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 14).isActive = true
        self.profilePicture.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 15).isActive = true
        self.profilePicture.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.profilePicture.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupUsername(){
        self.username.translatesAutoresizingMaskIntoConstraints = false
        self.username.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 10).isActive = true
        self.username.leftAnchor.constraint(equalTo: self.profilePicture.rightAnchor, constant: 10).isActive = true
        self.username.text = "username"
        self.username.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
    }
    
    func setupPostedTime(){
        self.postedTime.translatesAutoresizingMaskIntoConstraints = false
        self.postedTime.topAnchor.constraint(equalTo: self.username.bottomAnchor).isActive = true
        self.postedTime.leftAnchor.constraint(equalTo: self.profilePicture.rightAnchor, constant: 10).isActive = true
        self.postedTime.textColor = .lightGray
        self.postedTime.font = UIFont.systemFont(ofSize: 12)
        self.postedTime.text = "14h"
    }
    
    func setupPost(){
        self.post.translatesAutoresizingMaskIntoConstraints = false
        self.post.frame = CGRect(x: 0, y: 0, width: 70, height: 30)
        self.post.topAnchor.constraint(equalTo: self.postedTime.bottomAnchor, constant: 10).isActive = true
        self.post.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 15).isActive = true
        self.post.rightAnchor.constraint(equalTo: self.bgView.rightAnchor, constant: -15).isActive = true
        self.post.font = UIFont.systemFont(ofSize: 16)
        self.post.lineBreakMode = .byWordWrapping
        self.post.numberOfLines = 5
        self.post.text = "Lorem ipsum dolor sit amet consectetur. Varius viverra sit fringilla proin tristique in."
    }
    
    func setupLikeButton(){
        self.likeButton.translatesAutoresizingMaskIntoConstraints = false
        self.likeButton.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.likeButton.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.likeButton.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 15).isActive = true
        self.likeButton.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.likeButton.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    
    func setupLikeLabel(){
        self.likeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.likeLabel.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.likeLabel.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.likeLabel.leftAnchor.constraint(equalTo: self.likeButton.rightAnchor, constant: 6).isActive = true
        self.likeLabel.textColor = .lightGray
        self.likeLabel.font = UIFont.systemFont(ofSize: 17)
        self.likeLabel.text = "30K"
    }
    
    func setupCommentButton(){
        self.commentButton.translatesAutoresizingMaskIntoConstraints = false
        self.commentButton.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.commentButton.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.commentButton.leftAnchor.constraint(equalTo: self.likeLabel.rightAnchor, constant: 50).isActive = true
        self.commentButton.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.commentButton.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    
    func setupCommentLabel(){
        self.commentLabel.translatesAutoresizingMaskIntoConstraints = false
        self.commentLabel.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.commentLabel.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.commentLabel.leftAnchor.constraint(equalTo: self.commentButton.rightAnchor, constant: 6).isActive = true
        self.commentLabel.textColor = .lightGray
        self.commentLabel.font = UIFont.systemFont(ofSize: 17)
        self.commentLabel.text = "2.3K"
    }
    
    func setupShareButton(){
        self.shareButton.translatesAutoresizingMaskIntoConstraints = false
        self.shareButton.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.shareButton.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.shareButton.leftAnchor.constraint(equalTo: self.commentLabel.rightAnchor, constant: 50).isActive = true
    }
    
    func setupMessageButton(){
        self.messageButton.translatesAutoresizingMaskIntoConstraints = false
        self.messageButton.topAnchor.constraint(equalTo: self.post.bottomAnchor, constant: 21).isActive = true
        self.messageButton.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -20).isActive = true
        self.messageButton.leftAnchor.constraint(equalTo: self.shareButton.rightAnchor, constant: 50).isActive = true
    }
    
    func setText(username : String, postedTime : String, post : String, likes : String, comments : String){
        self.username.text = username
        self.postedTime.text = postedTime
        self.post.text = post
        self.likeLabel.text = likes
        self.commentLabel.text = comments
    }
}
