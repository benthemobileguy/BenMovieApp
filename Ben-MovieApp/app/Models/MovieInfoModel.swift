//
//  MovieInfoModel.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import Foundation

class MovieInfoModel: Codable {
    let posterPath: String?
    let releaseDate: String
    let voteAverage: Float
    let popularity: Float
    let id: Int
    let title: String
    let overview: String
}
