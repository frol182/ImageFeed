import UIKit

class ProfileViewController: UIViewController {
    let profileName = "Екатерина Новикова"
    let profileNickname = "@ekaterina_nov"
    let profileInfo = "Hello, world!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileImage = UIImage(named: "UserpickPhoto")
        let profileImageView = UIImageView(image: profileImage)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        let profileNameLabel = UILabel()
        profileNameLabel.text = profileName
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileNameLabel)
        profileNameLabel.textColor = UIColor(named: "YP White")
        profileNameLabel.font = .boldSystemFont(ofSize: 23)
        profileNameLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor).isActive = true
        profileNameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true

        
        let profileNicknameLabel = UILabel()
        profileNicknameLabel.text = profileNickname
        profileNicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileNicknameLabel)
        profileNicknameLabel.textColor = UIColor(named: "YP Grey")
        profileNicknameLabel.font = .systemFont(ofSize: 13)
        profileNicknameLabel.leadingAnchor.constraint(equalTo: profileNameLabel.leadingAnchor).isActive = true
        profileNicknameLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 8).isActive = true
        
        let profileInfoLabel = UILabel()
        profileInfoLabel.text = profileInfo
        profileInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileInfoLabel)
        profileInfoLabel.textColor = UIColor(named: "YP White")
        profileInfoLabel.font = .systemFont(ofSize: 17)
        profileInfoLabel.leadingAnchor.constraint(equalTo: profileNicknameLabel.leadingAnchor).isActive = true
        profileInfoLabel.topAnchor.constraint(equalTo: profileNicknameLabel.bottomAnchor, constant: 8).isActive = true
        
        let exitButtonImage = UIImage(named: "ExitButton")
        let exitButton = UIButton()
        exitButton.setImage(exitButtonImage, for: .normal)
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        exitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45).isActive = true
        exitButton.widthAnchor.constraint(equalToConstant: 44).isActive = true
        exitButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    @objc
    private func didTapExitButton() {
    }
}

