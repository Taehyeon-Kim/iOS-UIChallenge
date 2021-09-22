//
//  MainViewController.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

import UIKit

final class MainViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func setupAttribute() {
        
    }
    
    override func setupLayout() {
        
    }
    
    @IBOutlet private weak var tableView: UITableView!
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier,
                                                       for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }

        return cell
    }
}
