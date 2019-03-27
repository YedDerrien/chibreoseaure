//
//  RepoTableViewCell.swift
//  BLIH
//
//  Created by Guillaume Monot on 27/03/2019.
//Copyright © 2019 Guillaume Monot. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    // MARK: Global

    // MARK: Privates
    @IBOutlet weak var characterLabel: UILabel!
    @IBOutlet weak var repositoryLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    
    // MARK: IBOutlet

    // MARK: Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()

        setup()
    }
}

// MARK: - RepoTableViewCell
extension RepoTableViewCell {

    // MARK: - Configurations
    fileprivate func setup() {
        
    }

    // MARK: - Public Functions
    
    func updateField(repositoryName: String, owner: String) {
        self.characterLabel.text = "\(repositoryName.prefix(1))"
        self.repositoryLabel.text = repositoryName
        self.ownerLabel.text = owner
    }
}
