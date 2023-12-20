//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Roman Frolov on 06.12.2023.
//

import UIKit

class SingleImageViewController: UIViewController {
    var image: UIImage! {
        didSet {
            guard isViewLoaded else { return } // 1
            imageView.image = image // 2
        }
    }
    @IBOutlet var imageView: UIImageView!
    @IBAction private func buttonBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        imageView.image = image
    }
}
