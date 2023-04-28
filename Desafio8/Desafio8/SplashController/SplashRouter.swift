
import Foundation
import UIKit

protocol RoutingDestinationProtocol {
    func navigateTopushedController()
}

final class ViewControllerRouter {
    var viewController: ViewController?
    
    func navigateTopushedController(){
        let vc = AnotherViewController()
        let navegation = UINavigationController(rootViewController: vc)
        navegation.modalTransitionStyle = .crossDissolve
        navegation.modalPresentationStyle = .fullScreen
        self.viewController?.present(navegation, animated: true)
    }
    
    func navigateTopushedController2(){
        let vc = AnotherViewController2()
        let navegation = UINavigationController(rootViewController: vc)
        navegation.modalTransitionStyle = .crossDissolve
        navegation.modalPresentationStyle = .fullScreen
        self.viewController?.present(navegation, animated: true)
    }
    
    func navigateTopushedController3(){
        let vc = AnotherViewController3()
        let navegation = UINavigationController(rootViewController: vc)
        navegation.modalTransitionStyle = .crossDissolve
        navegation.modalPresentationStyle = .fullScreen
        self.viewController?.present(navegation, animated: true)
    }
}

