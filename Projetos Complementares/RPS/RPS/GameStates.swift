//
//  GameStates.swift
//  RPS
//
//  Created by flaviaamorim on 09/02/21.
//

import Foundation

enum GameStates {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Pedra, Papel, Tesoura"
        case .win:
            return "Você ganhou!"
        case .lose:
            return "Você perdeu!"
        case .draw:
            return "Houve um empate!"
        }
    }
}
