//
//  ContentainerModel.swift
//  NestedTextContainersKit
//
//  Created by Matheus Silveira Venturini on 03/07/25.
//

import Foundation
import SwiftUI
import Observation

protocol ContentContainerModel: AnyObject {
    associatedtype DataContents
    associatedtype NestedDataContents: ContentContainerModel
    
    var contentainerData: DataContents { get set }
    var nestedContent: [NestedDataContents] { get set }
}

@Observable class TextContentContainer: ContentContainerModel {
    
    typealias DataContents = String
    typealias NestedDataContents = TextContentContainer
    
    var contentainerData: String
    
    var nestedContent: [TextContentContainer]
    
    init(contentainerData: String, nestedContent: [TextContentContainer]) {
        self.contentainerData = contentainerData
        self.nestedContent = nestedContent
    }
    
}
