//
//  Post.swift
//  MyHood
//
//  Created by Edgar on 5/14/16.
//  Copyright © 2016 Edgar Gante. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String!
    private var title: String!
    private var postDesc: String!
    
    init(imagePaht: String, title: String, postDesc: String) {
        self.imagePath = imagePaht
        self.title = title
        self.postDesc = postDesc
    }
    
}