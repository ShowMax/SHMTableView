// Copyright since 2015 Showmax s.r.o.
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

/**
 
 Protocols for the SHMTableView.
 
 */


/**
 
 You don't need this protocol too much often. This is mostly handled by SHMTableView.
 
 However it could be usefull as you can see at SimpleRowViewController.
 
 */
public protocol SHMTableRowProtocol: class, SHMDiffable
{
    func configure(tableViewCell: UITableViewCell)
    func configureAtWillDisplay(tableViewCell: UITableViewCell)
    func configureOnHide(tableViewCell: UITableViewCell)
    
    var reusableIdentifier: String { get }
    var action: ((IndexPath) -> Void)? { get set }
    var bundle: Bundle? { get set }
}

/**
 
 This protocol is crucial and mostly used to define a header for a section. 
 The implementation of the section has to use it.
 
 */
public protocol SHMConfigurable
{
    associatedtype T
    
    func configure(_: T)
}

/**
 
 This protocol basically extends the usage which is mostly relevant to UITableViewCells.
 The implementation of a row has to use it.
 
 */
public protocol SHMConfigurableRow: SHMConfigurable
{
    func configureAtWillDisplay(_: T)
    func configureOnHide(_: T)
}
