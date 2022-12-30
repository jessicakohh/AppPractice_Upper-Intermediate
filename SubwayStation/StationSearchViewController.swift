//
//  ViewController.swift
//  SubwayStation
//
//  Created by juyeong koh on 2022/12/30.
//

import SnapKit
import UIKit

class StationSearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "지하철 도착정보"
        
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "지하철 역을 입력해주세요."
        searchController.obscuresBackgroundDuringPresentation = false // 차이점?
        navigationItem.searchController = searchController
    }
}

