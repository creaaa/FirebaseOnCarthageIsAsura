//
//  ViewController.swift
//  FirebaseOnCarthageIsAsura
//
//  Created by crea on 2018/08/22.
//  Copyright © 2018 crea. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ref: DocumentReference? = nil
        let db = Firestore.firestore()
        
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        
    }


}

