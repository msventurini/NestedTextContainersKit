//
//  CollectionViewWithDelegation.swift
//  NestedTextContainersKit
//
//  Created by Matheus Silveira Venturini on 03/07/25.
//

import UIKit
import SwiftUI



struct InteractiveCollectionView<Section, Item>: UIViewRepresentable where Section: Hashable & Sendable, Item: Hashable & Sendable {
    
    typealias DiffableDataSource =  UICollectionViewDiffableDataSource<Section, Item>
    
    typealias CellProvider =  DiffableDataSource.CellProvider
    
    var diffableDataSource: DiffableDataSource

    
    
    func makeUIView(context: Context) -> UICollectionView {
       
        let layout = UICollectionViewCompositionalLayout.list(using: .init(appearance: .grouped))
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)

        
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView(_ uiView: UICollectionView, context: Context) {
        
    }
    
    typealias UIViewType = UICollectionView
    
    
}

class InteractiveCollectionDelegate: NSObject ,UICollectionViewDelegate {
    
}

class InteractiveCollectionDataSource:  NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
}

#Preview {
    
    
//    InteractiveCollectionView()
//    InteractiveCollectionView { collectionView, cellProvider in
//        UICollectionViewDiffableDataSource<Int, Int>(collectionView: collectionView) { collectionView,indexPath,itemIdentifier in

//            var doneButtonConfiguration = doneButtonConfiguration(for: reminder)
//            doneButtonConfiguration.tintColor = .todayListCellDoneButtonTint
//            cell.accessibilityCustomActions = [doneButtonAccessibilityAction(for: reminder)]
//            cell.accessibilityValue =
//                reminder.isComplete ? reminderCompletedValue : reminderNotCompletedValue
//            cell.accessories = [
//                .customView(configuration: doneButtonConfiguration), .disclosureIndicator(displayed: .always)
//            ]
//
//            var backgroundConfiguration = UIBackgroundConfiguration.listCell()
//            backgroundConfiguration.backgroundColor = .todayListCellBackground
//            cell.backgroundConfiguration = backgroundConfiguration
            
//        }
//        UICollectionViewDiffableDataSource(collectionView: collectionView, cellProvider: cellProvider)
//    }
}
