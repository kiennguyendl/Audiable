//
//  LoginViewController.swift
//  Audible
//
//  Created by Nguyen Dang Kien on 6/5/17.
//  Copyright © 2017 Nguyen Dang Kien. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        //collectionView.backgroundColor = .red
        collectionView.register(UINib.init(nibName: "PageLoginCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellID")
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! PageLoginCollectionViewCell
        //cell.backgroundColor = .white
        cell.imgView.image = UIImage(named: "cat")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
