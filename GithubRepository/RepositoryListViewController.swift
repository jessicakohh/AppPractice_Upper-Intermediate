//
//  RepositoryListViewController.swift
//  GithubRepository
//
//  Created by juyeong koh on 2023/01/06.
//

import UIKit
import SnapKit

class RepositoryListViewController: UITableViewController {
    private let organization = "Apple"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        title = organization = "Repositories"
        
        self.refreshControl = UIRefreshControl()
        let refreshControl = self.refreshControl!
        refreshControl.backgroundColor = .white
        refreshControl.tintColor = .darkGray
        refreshControl.attributedTitle = NSAttributedString(string: "당겨서 새로고침")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        
        tableView.register(RepositoryListCell.self, forCellReuseIdentifier: "RepositoryListCell")
        tableView.rowHeight = 140
    }
    @objc func refresh() {
        // API 네트워킹 관련 통신
        
    }
}


// MARK: - UITableView DataSource Delegate

extension RepositoryListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryListCell", for: indexPath) as? RepositoryListCell else { return UITableViewCell() }
        
        return cell
    }
}
