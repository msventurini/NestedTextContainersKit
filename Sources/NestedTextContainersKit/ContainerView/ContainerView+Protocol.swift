////
////  ContainerView+Protocol.swift
////  NestedTextContainersKit
////
////  Created by Matheus Silveira Venturini on 03/07/25.
////
//
//import SwiftUI
//
//protocol ContentainerView: View {
//    
//    associatedtype Model: ContentContainerModel
//    associatedtype CurrentContent: View
//    associatedtype NestedContent: View
//    
//    var model: Model { get set }
//    var currentContent: (_ dataContents: Model.DataContents) -> CurrentContent { get set }
//    var nestedContent: (_ nestedDataContents: [Model.NestedDataContents]) -> NestedContent { get set }
//    
//    init<Model, CurrentContent, NestedContent>(model: Model, currentContent: CurrentContent, nestedContent: NestedContent) where Model: ContentContainerModel, CurrentContent: View, NestedContent: View
//
//}
