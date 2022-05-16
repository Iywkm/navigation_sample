import UIKit

final class MainViewController: UIViewController {
    // MARK: - Views
    private var router: Router

    // MARK: - Initialization
    init(router: Router) {
        self.router = router

        super.init(nibName: nil, bundle: nil)

        configurationNavigationBar()
        addSubviews()
        configureConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }

}

fileprivate extension MainViewController {
    func addSubviews() {
    }

    func configureConstraints() {
    }

    func configurationNavigationBar() {
        title = "main"

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "present",
            style: .plain,
            target: self,
            action: #selector(didTapPresentButton)
        )

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "push",
            style: .plain,
            target: self,
            action: #selector(didTapPrepareButton)
        )

    }

    @objc func didTapPresentButton() {
        router.presentSecondVC()
    }

    @objc func didTapPrepareButton() {
        router.pushSecondVC()
    }
    
}

