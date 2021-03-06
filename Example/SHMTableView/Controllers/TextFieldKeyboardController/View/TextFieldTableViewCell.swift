//
//  TextFieldTableViewCell.swift
//  SHMTableView
//
//  Created by Dominik Bucher on 14/07/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SHMTableView

struct TextViewCellModel
{
    let placeholder: String
}

class TextFieldTableViewCell: UITableViewCell
{
    @IBOutlet var textField: UITextField!
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        
        if selected
        {
            textField.becomeFirstResponder()
        }
    }
}

extension TextFieldTableViewCell: SHMConfigurableRow
{
    typealias T = TextViewCellModel
    
    func configure(_ model: T)
    {
        textField.delegate = self
        textField.placeholder = model.placeholder
    }
    
    func configureAtWillDisplay(_ model: T)
    {
    }
    
    func configureOnHide(_ model: T)
    {
    }
}

extension TextFieldTableViewCell: UITextFieldDelegate
{
    func textFieldDidBeginEditing(_ textField: UITextField) 
    {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool 
    {
        textField.resignFirstResponder()
        return false
    }
}
