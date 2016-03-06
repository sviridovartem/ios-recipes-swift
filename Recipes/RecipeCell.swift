//
//  RecipeCell.swift
//  Recipes
//
//  Created by Admin on 04/03/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var recipeTitle:UILabel!
    @IBOutlet weak var recipeImg:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configureCell(recipe:Recipe) {
        recipeTitle.text=recipe.title
        recipeImg.image = recipe.getRecipeImg()
    }
}
