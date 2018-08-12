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
            var destination = segue.destination
            if let navcon = destination as? UINavigationController {
               destination = navcon.visibleViewController ?? navcon
            }
            if let imageVC = destination as? ImageViewController {
               imageVC.imageURL = url
               imageVC.title = (sender as? UIButton)?.currentTitle
            }
         }
      }
   }
   
}





