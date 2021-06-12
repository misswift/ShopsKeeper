import UIKit

class ProfileController: UIViewController,  UITableViewDelegate, UITableViewDataSource  {
    
    
    let userProfileCellID = "userProfileCellID"
    let userDataCellID = "userDataCellID"
    let userSettingsCellID = "userSettingsCellID"
    
    let tableView = UITableView()
    let profileImage = UIImageView()
    let menuBar: Menubar = {
        let mb = Menubar()
        return mb
    }()
    
    
    override func viewDidLoad() {
        setupTableView()
        setupMenuBar()
        setupCollectionView()
        setupProfileImage()
        setupNavBarItems()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.backgroundColor = .white
        tableView.frame = CGRect(x: 0, y: 300, width: view.frame.width, height: view.frame.height)
        profileImage.layer.cornerRadius = profileImage.frame.size.width/5
        profileImage.clipsToBounds = true
    }
    
    private func setupNavBarItems(){
        let outBarButtonItem = UIBarButtonItem(image: UIImage(named: "pr_out")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self,  action: #selector(handleOut))
        let notificationBarButtonItem = UIBarButtonItem(image: UIImage(named: "pr_notification")?.withRenderingMode(.alwaysOriginal)
, style: .plain, target: self,  action: #selector(handleNotification))
        
        navigationItem.rightBarButtonItem = outBarButtonItem
        navigationItem.leftBarButtonItem = notificationBarButtonItem
        
    }
    
    
    @objc func handleOut (){
        print(123)
    }

    @objc func handleNotification (){
        print(123)
    }
    
    private func setupCollectionView(){
        
    }
    
    private func setupMenuBar(){
        view.addSubview(menuBar)
        menuBar.backgroundColor = .red
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        menuBar.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        menuBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
    }
    
    
   
    private func setupProfileImage(){
        view.addSubview(profileImage)
        profileImage.backgroundColor = UIColor.lightGray
        
        
        
//        profileImage.layer.shadowColor = UIColor.black.cgColor
//        profileImage.clipsToBounds = false
//        profileImage.layer.shadowColor = .init(gray: 100, alpha: 100)
//        profileImage.layer.shadowOpacity = 1
//        profileImage.layer.shadowOffset = CGSize.zero
//        profileImage.layer.shadowRadius = 10
//        profileImage.layer.shadowPath = UIBezierPath(roundedRect: profileImage.bounds, cornerRadius: 10).cgPath
        
        profileImage.layer.shouldRasterize = false
        profileImage.layer.cornerRadius = 10
        
    
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImage.heightAnchor.constraint(equalToConstant: 168),
            profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            profileImage.widthAnchor.constraint(equalToConstant: 168),
            profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
    }
    
    
    private func setupTableView (){
        //добавляем таблицу
        view.addSubview(tableView)
        tableView.register (UITableViewCell.self, forCellReuseIdentifier: userProfileCellID)
//        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        tableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
       // tableView.contentInset = UIEdgeInsets(top: 165, left: 0, bottom: 0, right: 0)
        
        //добавляем менюбар
       
        //добавляем картинку профиля
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: userProfileCellID, for: indexPath)
            //as! UserProfileCell
        //cell.delegate = self
        //cell.labelUP.text = "ffff"
        return cell
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
