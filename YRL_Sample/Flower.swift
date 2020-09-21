//
//  Flower.swift
//  YRL_Sample
//
//  Created by Yasuyuki Suzuki on 2020/05/09.
//  Copyright © 2020 Yasuyuki Suzuki. All rights reserved.
//

import UIKit

class Flower {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var photographer: String?
    
    // MARK: Initializer
    init?(name: String, photo: UIImage?, photograper: String?) {
        
        self.name = name
        self.photo = photo
        self.photographer = photograper
    }
}
