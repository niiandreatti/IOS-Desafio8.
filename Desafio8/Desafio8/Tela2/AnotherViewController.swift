

import UIKit

class AnotherViewController : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        configureUI()
    }
    private lazy var  textButton: UIButton = {
        let tv = UIButton()
        tv.layer.borderWidth = 1
        tv.layer.borderColor = UIColor.black.cgColor
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .white
        tv.setTitleColor(UIColor.black, for: .normal)
        tv.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        tv.titleEdgeInsets = UIEdgeInsets(top: 0, left: 47, bottom: 0, right: 0)
        tv.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        tv.layer.cornerRadius = 7
        tv.setTitle("Voltar", for: .normal)
        tv.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        tv.adjustsImageWhenDisabled = false
        return tv
        
    }()
    
    func configureUI(){
        view.addSubview(textButton)
        configureLayouts()
    }
    
    func configureLayouts(){
        let textButtonConstraints = [
            textButton.widthAnchor.constraint(equalToConstant: 150),
            textButton.heightAnchor.constraint(equalToConstant: 40),
            textButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 90)
        ]
        NSLayoutConstraint.activate(textButtonConstraints)
    }
    
    @objc func backButtonTapped(){
         dismiss(animated: true, completion: nil)
        }

}
