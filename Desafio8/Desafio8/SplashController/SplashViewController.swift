
import UIKit


protocol ViewControllerLogic: AnyObject {
    func displayHelloWorld()
}

class ViewController: UIViewController, ViewControllerLogic,  UITableViewDelegate, UITableViewDataSource {

    //var interactor: InteractorLogic?
    var router: ViewControllerRouter?
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
        configureUI()
    }
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.blue
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    func configureUI(){
        view.addSubview(tableView)
        configureLayouts()
        //interactor?.fetchHelloWorld()
    }
    
    func configureLayouts(){
        
        let constraints = [
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    let data = ["Item 1", "Item 2", "Item 3"]
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = data[indexPath.row]
           // Define a cor de fundo da célula como branco
           cell.backgroundColor = UIColor.white
           
           return cell
       }
       
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 44 // Altura da linha em pontos
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 { // Se a primeira célula for selecionada
            router?.navigateTopushedController()
        } else if indexPath.row == 1 { // Se a segunda célula for selecionada
            router?.navigateTopushedController2()
        } else if indexPath.row == 2 { // Se a terceira célula for selecionada
            router?.navigateTopushedController3()
        }
        // Adicione quantos else if forem necessários para as outras células
    }
    
    func displayHelloWorld() {
        print("hello")
    }
        
}


