//
//  Recipe.swift
//  Recipes
//
//  Created by Admin on 04/03/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Recipe: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    func setRecipeImage(img: UIImage){
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImg() -> UIImage {
    let img = UIImage(data: self.image!)!
        return img
    }
}
