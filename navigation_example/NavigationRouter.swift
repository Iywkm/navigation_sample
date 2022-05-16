import UIKit

protocol Router {
    var navigationController: UINavigationController { get }
    var animated: Bool { get }

    func showMainViewController()
    func presentSecondVC()
    func pushSecondVC()
}

struct NavigationRouter: Router {

    var navigationController: UINavigationController
    var animated: Bool

    func showMainViewController() {
        navigationController.setViewControllers(
            [
                MainViewController(router: self)
            ],
            animated: animated
        )
    }

    func presentSecondVC() {
        let secondVC = SecondViewController(router: self)
        let presentNavController = UINavigationController(rootViewController: secondVC)
        presentNavController.modalPresentationStyle = .formSheet

        let frameWidth : CGFloat = 600
        let frameHeight : CGFloat = 500;
        presentNavController.preferredContentSize = CGSize(width: frameWidth, height: frameHeight)
        navigationController.present(
            presentNavController,
            animated: animated
        )
    }

    func pushSecondVC() {
        let secondVC = SecondViewController(router: self)
        self.navigationController.pushViewController(
            secondVC,
            animated: animated
        )
    }
}
