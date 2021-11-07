//
//  VideoModel.swift
//  Africa
//
//  Created by Igor Efimov on 15.10.2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    var thumbnail: String {
        "video-\(id)"
    }
}
