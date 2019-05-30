//
//  ViewController.swift
//  CollectionView_Intro
//
//  Created by Luis Rollon Gordo on 16/1/17.
//  Copyright © 2017 EfectoApple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var lostCharacters = ["Perdidos", "Friends", "Breaking Bad", "Dexter", "Futurama", "Los Soprano", "Mad Men", "House", "Anatomia de Grey", "24", "CSI", "Deadwood", "Expediente X", "Fringe", "Heroes", "Juego de Tronos", "Los Simpsons", "Doctor Who", "Modern Family", "Padre de Familia", "Prison Break", "South Park", "The Big Bang Theory", "The Walking Dead"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lostCharacters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "Item"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! LostCollectionViewCell
        
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: lostCharacters[indexPath.row])
        cell.itemLabel.text = lostCharacters[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier = "goToDetail" {
            guard let 
        }
    }
    

}

