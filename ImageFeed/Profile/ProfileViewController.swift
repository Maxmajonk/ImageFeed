import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel!
    private var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProfileUI()
    }

    private func setupProfileUI() {
        setupProfileImage()
        setupUserNameLabel()
        setupLogoutButton()
        nickNameLabel()
        descriptionLabel()
    }

    private func setupProfileImage() {
      let imageView = UIImageView(image: UIImage(named: "Avatar"))
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)

        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true

        self.imageView = imageView
    }


    private func setupUserNameLabel() {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.textColor = .ypWhite
        label.font = UIFont(name: "Bold", size: 23)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0).isActive = true
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true

        self.label = label
    }
    
    private func nickNameLabel() {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.textColor = .ypGray
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0).isActive = true
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 34).isActive = true
    }
    
    private func descriptionLabel() {
        let label = UILabel()
        label.text = "Hello world!"
        label.textColor = .ypWhite
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0).isActive = true
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 60).isActive = true
    }

    private func setupLogoutButton() {
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        button.tintColor = .ypRed
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView?.centerYAnchor ?? view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    }

    @objc
    private func didTapButton() {
        defer {
            imageView?.removeFromSuperview()
            imageView = nil
        }

        label?.removeFromSuperview()
        label = nil
    }
}

extension UIColor {
    static var ypWhite: UIColor {
        return UIColor(named: "YP White")!
    }
    static var ypRed: UIColor {
        return UIColor(named: "YP Red")!
    }
    static var ypGray: UIColor {
        return UIColor(named: "YP Gray")!
    }
}
