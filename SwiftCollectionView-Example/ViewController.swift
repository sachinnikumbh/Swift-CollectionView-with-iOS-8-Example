//
//  ViewController.swift
//  SwiftCollectionView-Example
//
//  Created by Sachin Nikumbh on 25/05/15.
//  Copyright (c) 2015 SN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var objCollectionView: UICollectionView!
    var arrayTableData : [String] = ["One","Two","Three","Four","Five","Six","Seven"]
    var arrayTableImages : [String] = ["img1", "img2", "img3","img4","img5","img6","img7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arrayTableData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell : CustomCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.objImageView.image = UIImage(named: arrayTableImages[indexPath.row])
        cell.objLabel.text = arrayTableData[indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        showAlert(indexPath)
        println("cell seleced \(indexPath.row)")
    }
    
    func showAlert(indexPath : NSIndexPath)
    {
        var alertView = UIAlertController(title: "Alert", message: "You click on cell number \(indexPath.row+1)", preferredStyle: UIAlertControllerStyle.Alert)
        alertView.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

