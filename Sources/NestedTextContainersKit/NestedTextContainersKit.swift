// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct ContainerView<Model, CurrentContent, NestedContent>: View where Model: ContentContainerModel, CurrentContent: View, NestedContent: View {
    
    var model: Model
    var currentContent: (_ dataContents: Model.DataContents) -> CurrentContent
    var nestedContent: (_ nestedDataContents: [Model.NestedDataContents]) -> NestedContent
    
    var body: some View {
        VStack {
            currentContent(model.contentainerData)
            nestedContent(model.nestedContent)
        }
    }

}



struct TextContainerView: CellContent {
    
    typealias CellContentType = String
    
    var contents: String
    
}


#Preview {
    @Previewable @State var teste: TextContentContainer = .init(contentainerData: "aaaaa", nestedContent: [TextContentContainer(contentainerData: "bbba", nestedContent: [])])
    
    ContainerView(model: teste) { dataContents in
//        ContainedView(model: "aaaaa")
        TextContainerView(contents: dataContents)
    } nestedContent: { nestedDataContents in
        TextContainerView(contents: nestedDataContents.first!.contentainerData)
    }
}


protocol CellContent: View {
    
    associatedtype CellContentType: Codable
    
    var contents: CellContentType { get set }
    
}

extension CellContent where Self.CellContentType == String {
    
    var body: some View {
        Text(contents)
    }
        
    

}




//enum CellContent {
//    case rawText()
//}
