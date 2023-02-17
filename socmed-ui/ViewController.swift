//
//  ViewController.swift
//  socmed-ui
//
//  Created by Phincon on 17/02/23.
//

import UIKit

protocol VCProtocol{
    func registerTableView()
    func appendPost()
}
class ViewController: UIViewController {
    var tableView : UITableView!
    var post : [PostStruct] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        appendPost()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomizeTextField.identifier, for: indexPath) as? CustomizeTextField else { return UITableViewCell() }
            
            cell.setupSearch()
            cell.setupMicButton()
            cell.setupSearchImage()
            
            cell.mic.image = UIImage(named: "mic-button")
            cell.searchImage.image = UIImage(named: "search")
            cell.selectionStyle = .none
            
            return cell
            
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomizeTableView.identifier, for: indexPath) as? CustomizeTableView else { return UITableViewCell() }
        
        cell.setupComponents()
        
        let parsePost = post[indexPath.row]
        cell.setText(username: parsePost.username, postedTime: parsePost.postedTime, post: parsePost.post, likes: parsePost.likes, comments: parsePost.comments)
        cell.profilePicture.image = UIImage(named: "profile-user")
        cell.likeButton.image = UIImage(named: "like-button")
        cell.commentButton.image = UIImage(named: "comment-button")
        cell.shareButton.image = UIImage(named: "share-button")
        cell.messageButton.image = UIImage(named: "message-button")
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return post.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let parsePost = post[indexPath.row]
            let alert = UIAlertController(title: "Clicked", message: "Apaya, pokoknya kamu dah ngeklik post si \(parsePost.username)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}

extension ViewController : VCProtocol {
    func setupTableView(){
        view.addSubview(tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    
    func registerTableView(){
        tableView = UITableView()
        setupTableView()
        tableView.register(CustomizeTableView.self, forCellReuseIdentifier: CustomizeTableView.identifier)
        tableView.register(CustomizeTextField.self, forCellReuseIdentifier: CustomizeTextField.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.separatorColor = .white;
        self.view.addSubview(tableView)
    }
    
    func appendPost() {
        let post1 = PostStruct(username: "sally", postedTime: "3h", post: "Lopyu Jake", likes: "7.3K", comments: "5K")
        let post2 = PostStruct(username: "jakey", postedTime: "3h", post: "Lopyutu Sally Lopyutu Sally Lopyutu Sally Lopyutu Sally Lopyutu Sally Lopyutu Sally", likes: "10K", comments: "8K")
        let post3 = PostStruct(username: "minerva", postedTime: "4h", post: "ewhh", likes: "7K", comments: "1K")
        let post4 = PostStruct(username: "mamanyasally", postedTime: "3h", post: "Sally pulang", likes: "73K", comments: "5K")
        let post5 = PostStruct(username: "budi", postedTime: "5h", post: "#galau", likes: "3K", comments: "500")
        
        post.append(post1)
        post.append(post2)
        post.append(post3)
        post.append(post4)
        post.append(post5)
    }
}
