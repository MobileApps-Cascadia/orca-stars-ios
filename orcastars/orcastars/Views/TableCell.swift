//
//  TableCell.swift
//  orcastars
//
//  Created by Joshua Martinez on 5/13/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit

class TableCell: UITableViewCell {

    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var thumbnailImageView: UIImageView!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        thumbnailImageView.image = nil
    }

    // MARK: Cell Configuration

    func configurateTheCell(_ businesses: Business) {
        nameLabel.text = businesses.name
        thumbnailImageView.image = UIImage(named: businesses.logo)
    }

}
