//
//  ContentainerModel.swift
//  NestedTextContainersKit
//
//  Created by Matheus Silveira Venturini on 03/07/25.
//

import Foundation

protocol ContentainerModel {
    associatedtype DataContents
    associatedtype NestedDataContents
    
    var contentainerData: DataContents? { get set }
    var nestedContent: NestedDataContents? { get set }
}
