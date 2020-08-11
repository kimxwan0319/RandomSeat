//
//  collectionViewController.swift
//  collectionViewTest
//
//  Created by 김수완 on 2020/07/29.
//  Copyright © 2020 김수완. All rights reserved.
//

import UIKit

class collectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.reloadData()
        
        setCollectionItems()
    }
    
    var numbers : [UInt] = []
    
    func rand() -> UInt {
        var randomNum : UInt = 0
        
        repeat {
            randomNum = UInt(Int.random(in: 1...num))
        }while numbers.contains(randomNum)
        
        numbers.append(randomNum)
        
        return randomNum
    }
    
    var collectionItems = [String]()
    
    func setCollectionItems()  {
        NSLog("setCollectionItems")
        for _ in 0 ..< num {
            collectionItems.append(String(rand()))
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return num
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        
        cell.numLable.text = collectionItems[indexPath.row]
        return cell
    }
    
    @IBAction func reset(_ sender: Any) {
        
        for _ in 0 ..< collectionItems.count {
            collectionItems.remove(at: 0)
        }
        for _ in 0 ..< numbers.count {
            numbers.remove(at: 0)
        }
        setCollectionItems()
        self.collectionView.reloadData()
    }
    
}
