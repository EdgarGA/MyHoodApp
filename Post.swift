//
//  Post.swift
//  MyHood
//
//  Created by Edgar on 5/14/16.
//  Copyright © 2016 Edgar Gante. All rights reserved.
//

import Foundation

class Post {
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePaht: String, title: String, postDesc: String) {
        self._imagePath = imagePaht
        self._title = title
        self._postDesc = postDesc
    }
    
}