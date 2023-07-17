//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Mikhail Vostrikov on 08.07.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    @IBOutlet var likeButton: UIButton! // удалить эту кнопку?
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var dateLable: UILabel!
    static let reuseIdentifier = "ImagesListCell"
    }
