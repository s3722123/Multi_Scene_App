//
//  LanguageViewController.swift
//  Multi_Scene_App
//
//  Created by Lachlan  Wilson on 12/8/19.
//  Copyright © 2019 Lachlan  Wilson. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {
    
    //View
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var message: UILabel!
    
    //ViewModel
    private let viewModel = LanguageViewModel()
    
    var details:(image: UIImage?, message: String, url: String, details: String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let index =  self.tabBarController?.selectedIndex else {return}
        
        guard let currentTab = self.tabBarController?.tabBar.items?[index].title else {return}
        
        //Ask the viewmodel for information on the current tab
        details = viewModel.getDetails(forKey: currentTab)
        ImageView.image = details?.image
        message.text = details?.message
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? LanguageDetailViewController
        destination?.detailsInfo = details
    }
    
}

