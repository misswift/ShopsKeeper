
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UITabBar.appearance().barTintColor = .systemBackground
     
        setupVCs()
       
        }
    func setupVCs (){
        let layout = UICollectionViewFlowLayout()
        viewControllers = [ createNavControllerWithTitle(for: HomeController(collectionViewLayout: layout) , title: "Home", imageName: "ic_home"), createNavControllerWithTitle(for: ShopController(), title: "Shop", imageName: "ic_shop"), createNavControllerWithTitle(for: CatalogController(), title: "Каталог", imageName: "ic_catalog"), createNavControllerWithTitle(for: ProfileController(), title: "Профиль", imageName: "ic_profile"), createNavControllerWithTitle(for: BasketController(), title: "Корзина", imageName: "ic_basket")]
    }
    
    func createNavControllerWithTitle (for rootViewController: UIViewController, title: String, imageName: String )-> UIViewController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage (named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        //rootViewController.navigationItem.title = title
        return navController
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
