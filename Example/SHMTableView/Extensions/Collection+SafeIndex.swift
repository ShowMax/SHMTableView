//
//  Collection+SafeIndex.swift
//  SHMTableView
//
//  Created by Dominik Bucher on 18/07/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

public extension Collection where Indices.Iterator.Element == Index 
{
    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Generator.Element?
    {
        return indices.contains(index) ? self[index] : nil
    }
}
