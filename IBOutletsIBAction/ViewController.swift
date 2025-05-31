//
//  ViewController.swift
//  IBOutletsIBAction
//
//  Created by Paul Jaime Felix Flores on 28/07/23.
//

import UIKit

class ViewController: UIViewController {

    //Parte 1,relacionamos el Main con el ViewController.
    
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    //Parte 1,Seleccionamos el botón.
    @IBAction func buttonPressed(_ sender: UIButton) {
        /*Parte 1,constante para que tome los pókemon.
         para que tome una constante en forma aleatoria entre el 0 y 24, de acuerdo a los pokemons
         */
        //El 24 es numero magico o hardcore, debemos evitar eso ,asi que hacimos un arcivo de
        //constantes llamado Appp Constantes
        //let pokemonID = Int.random(in: 0..<24)
        
        //Parte 2
        let pokemonID = Int.random(in: 0..<Constans.MaxNumImages)
        /*Parte 1,Ponemos la referencia de pokemonImage con la propiedad
        image y esto sera igual a la imagen con queconstruimos
         este inicializadr nos pide una cadena
         
         Parte 1,String(describing: pokemonID), creamos una cadena apartir de de un valor,y ese valor
         será el pókemon ID
         */
        pokemonImage.image = UIImage(named: String(describing: pokemonID))
        
        print("Button pressed!,select imagen:",pokemonID)
    }
    
}

