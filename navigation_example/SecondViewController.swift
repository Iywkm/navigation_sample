import UIKit

final class SecondViewController: UIViewController {
    // MARK: - Views
    var router: Router
    // MARK: - Initialization
    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "second"
        view.backgroundColor = .systemGray
    }
}
