//
//  TesteSections.swift
//  NestedTextContainersKit
//
//  Created by Matheus Silveira Venturini on 04/07/25.
//

import SwiftUI

struct SectionedStack<Content: View>: View {
    var content: Content


    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading) {
            Group(sections: content) { sections in
                ForEach(sections) { section in
                    Section {
                        section.content
                    } header: {
                        section.header
                    } footer: {
                        section.footer
                    }
                }
            }
        }
    }
}

#Preview {
    SectionedStack {
        Section {
            Text("ContentA")
        } header: {
            Text("Section A")
        } footer: {
            Text("Footer A")
        }
        
        Section {
            Text("ContentB")
        } header: {
            Text("Header B")
        } footer: {
            Text("Footer B")
        }

    }
}

protocol DocumentSection {
    var sectionTitle: String { get set }
}

protocol DocumentSubsection {
    var subsectionTitle: String { get set }
}

@Observable class ResumeSectionModel {
    
}


