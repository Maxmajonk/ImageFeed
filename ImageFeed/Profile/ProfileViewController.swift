import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel!
    private var imageView: UIImageView!
   
    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProfileUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
           return .lightContent
       }

    // MARK: - Private Methods
    
    private func setupProfileUI() {
        setupViews()
        setupConstraints()
        setupLogoutButton()
    }
    
    private func setupViews() {
        imageView = UIImageView(image: UIImage(named: "Avatar"))
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        label = UILabel()
        label.text = "Екатерина Новикова"
        label.textColor = .ypWhite
        label.font = UIFont(name: "Bold", size: 23)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        let nicknameLabel = UILabel()
        nicknameLabel.text = "@ekaterina_nov"
        nicknameLabel.textColor = .ypGray
        nicknameLabel.font = UIFont.systemFont(ofSize: 13)
        nicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nicknameLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Hello world!"
        descriptionLabel.textColor = .ypWhite
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
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
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 0).isActive = true
    }

    // MARK: - IB Actions
    
    @objc
    private func didTapButton() {
        if imageView != nil {
            imageView.removeFromSuperview()
            imageView = nil
        }

        if label != nil {
            label.removeFromSuperview()
            label = nil
        }
    }

    // MARK: - Private Properties
    //вы указали замечание: leading констрейнт у imageView и других элементов на ProfileViewController в работе равен 20, а в макете он 20. Можно подправить констрейнт у изображения, так как остальные привязаны к нему - они подправятся автоматически:)
    // он у меня 20 и в макете 20, что нужно подправить? я посмотрел в макет и исправил на 16
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            
            label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0),
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            
            view.subviews[2].leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0),
            view.subviews[2].topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 34),
            
            view.subviews[3].leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0),
            view.subviews[3].topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 60),
        ])
    }
}
