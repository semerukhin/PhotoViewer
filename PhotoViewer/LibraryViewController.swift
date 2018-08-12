//
//  LibraryViewController.swift
//  PhotoViewer
//
//  Created by Ilya Semerukhin on 12.08.2018.
//

import UIKit

class LibraryViewController: UIViewController {
   
   // MARK: - Navigation
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let identifier = segue.identifier {
         if let url = DemoURLs.pawelCzerwinski[identifier] {
            if let imageVC = segue.destination.contents as? ImageViewController {
               imageVC.imageURL = url
               imageVC.title = (sender as? UIButton)?.currentTitle
            }
         }
      }
   }
   
}

extension UIViewController {
   var contents: UIViewController {
      if let navcon = self as? UINavigationController {
         return navcon.visibleViewController ?? self
      } else {
         return self
      }
   }
}





