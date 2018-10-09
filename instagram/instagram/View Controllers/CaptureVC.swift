//
//  CaptureVC.swift
//  instagram
//
//  Created by Jamil Jalal on 9/29/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class CaptureVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var image : [UIImage]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerController.SourceType.camera
        self.present(vc, animated: true, completion: nil)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("Camera is available")
            vc.sourceType = .camera
        }else{
            print("Camera is not available. We'll use photo library instead")
            vc.sourceType = .photoLibrary
        }
    }
    @IBAction func logoutPressed(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("didLogout"), object: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let originalImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        let edtedImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
        
        dismiss(animated: true, completion: nil)
    }
    
}
