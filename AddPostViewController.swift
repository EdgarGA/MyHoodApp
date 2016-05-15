//
//  AddPostViewController.swift
//  MyHood
//
//  Created by Edgar on 5/14/16.
//  Copyright © 2016 Edgar Gante. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleTextField: HoshiTextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descTextField: HoshiTextField!
    
    var imagePicker: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    @IBAction func makeBtnPressed(sender: AnyObject) {
        if let title = titleTextField.text, let desc = descTextField.text, let img = postImg.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(img)
            
            let post = Post(imagePath: imgPath, title: title, description: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func addPhotoBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    @IBAction func cancelBtnPressed(sender: UIButton!) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
}
