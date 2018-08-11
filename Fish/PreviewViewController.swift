//
//  PreviewViewController.swift
//  Fish
//
//  Created by Amit on 7/10/18.
//  Copyright © 2018 Amit. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    var image: UIImage!
    @IBOutlet weak var Photo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Photo.image = self.image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Retake(_ sender: Any) {

    dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func Save(_ sender: Any) {
        //let imageData = UIImagePNGRepresentation(Photo.image!)
        //let jpegImage = UIImageJPEGRepresentation(imageData, <#CGFloat#>)
        //let compressedImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(image,
                        nil, nil, nil)
        //let alert = UIAlertController(title: "Saved", message: "Your image has been saved", preferredStyle: .alert)
        //let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        //alert.addAction(okAction)
        //self.present(alert, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
