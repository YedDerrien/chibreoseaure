//
//  ViewController.swift
//  BLIH
//
//  Created by Guillaume Monot on 26/03/2019.
//  Copyright © 2019 Guillaume Monot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// MARK: - IBOutlet
    @IBOutlet fileprivate weak var topLabel: UILabel!
    @IBOutlet fileprivate weak var button: UIButton!
    @IBOutlet fileprivate weak var tvRepository: UITableView!
    @IBOutlet fileprivate weak var repositoryLabel: UITableView!
    
    var repositoryList: [String] = ["Raytracer", "42sh", "Indie Studio", "Modotube"]
    
    /// MARK: - Privates
    static fileprivate let reuseIdentifier = "reuseIdentifierVideoTableViewCell"
    
    /// MARK: - Application Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.prepareTableView()
        self.button.addTarget(self, action: #selector(buttonMethod), for: .touchDown)
    }
}

/// ViewController : Method extension
extension ViewController {
    
    @objc
    fileprivate func buttonMethod() {
        self.topLabel.text = "Hello YED";
        logger.verbose("come on")
    }
}

/// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {

    fileprivate func prepareTableView() {
        self.tvRepository.delegate = self
        self.tvRepository.dataSource = self
        self.tvRepository.tableHeaderView = nil
        self.tvRepository.estimatedRowHeight = 105
        self.tvRepository.tableFooterView = UIView()
        self.tvRepository.rowHeight = UITableView.automaticDimension
        
        /// register nib
        self.tvRepository.registerNib(nibName: "RepoTableViewCell", reuseIdentifier: ViewController.reuseIdentifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ViewController.reuseIdentifier, for: indexPath) as? RepoTableViewCell {
            cell.updateField(repositoryName: self.repositoryList[indexPath.row], owner: "Guillaume")
            return cell
        }
        return UITableViewCell()
    }
    
    
}
