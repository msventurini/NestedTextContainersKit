// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct TesteModel: ContentainerModel {
//    var contentainerData: String
    
//    typealias DataContents = String
    
//    typealias NestedDataContents = String

    var contentainerData: String?
    var nestedContent: String?
}

struct Teste<Model, CurrentContent, NestedContent>: ContentainerView where Model: ContentainerModel, CurrentContent: View, NestedContent: View {
    
    var model: Model
    var currentContent: (_ dataContents: Model.DataContents?) -> CurrentContent
    var nestedContent: (_ nestedDataContents: Model.NestedDataContents?) -> NestedContent

}

protocol ContainedView: View {
    
}



#Preview {
    @Previewable @State var teste: TesteModel = .init(contentainerData: "aaaaa", nestedContent: "bbbbbbb")
    
    Teste(model: teste) { dataContents in
        Text(dataContents ?? "erro")
    } nestedContent: { nestedDataContents in
        Text(nestedDataContents ?? "erro")
    }

    
}


