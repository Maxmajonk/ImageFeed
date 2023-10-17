import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel?
    private var imageView: UIImageView?  // Объявляем свойство imageView на уровне класса

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProfileUI()
    }

    private func setupProfileUI() {
        setupProfileImage()
        setupUserNameLabel()
        setupLogoutButton()
    }

    private func setupProfileImage() {
        if let customImage = UIImage(named: "Avatar1") {
            let tintedCustomImage = customImage.withTintColor(.gray)
            let imageView = UIImageView(image: tintedCustomImage)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(imageView)

            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        }
    }


    private func setupUserNameLabel() {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        if let imageView = imageView {
            label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        }
        self.label = label
    }

    private func setupLogoutButton() {
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView?.centerYAnchor ?? view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
    }

    @objc
    private func didTapButton() {
        label?.removeFromSuperview()
        label = nil
    }
}
