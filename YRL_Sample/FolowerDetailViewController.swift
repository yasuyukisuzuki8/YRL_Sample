//
//  FolowerDetailViewController.swift
//  YRL_Sample
//
//  Created by Yasuyuki Suzuki on 2020/05/09.
//  Copyright © 2020 Yasuyuki Suzuki. All rights reserved.
//

import UIKit

class FolowerDetailViewController: UIViewController {
    var flower: Flower?

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photographer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if flower != nil {
            self.name.text = flower!.name
            self.photo.image = flower!.photo ?? nil
            self.photographer.text = flower!.photographer ?? ""
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
