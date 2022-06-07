//
//  NowPlayingResponseModel.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import Foundation

class NowPlayingResponseModel: Decodable {
    let page: Int
    let results: [MovieInfoModel]
    let totalPages: Int
    let totalResults: Int
}
