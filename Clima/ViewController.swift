//
//  ViewController.swift
//  Clima
//
//  Created by Kate Kashko on 8.03.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var backgroundImageView: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(named: Constants.background)
        element.contentMode = .scaleAspectFill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var mainStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.spacing = 15
        element.alignment = .trailing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var headerStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.alignment = .fill
        element.distribution = .fill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var geoButton: UIButton = {
        let element = UIButton(type: .system)
        element.setImage(UIImage(systemName: Constants.geoSF), for: .normal)
        element.tintColor = .label
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var searchTextField: UITextField = {
        let element = UITextField()
        element.placeholder = Constants.search
        element.borderStyle = .roundedRect
        element.textAlignment = .right
        element.font = .systemFont(ofSize: 25)
        element.textColor = .label
        element.tintColor = .label
        element.backgroundColor = .systemFill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var searchButton: UIButton = {
        let element = UIButton(type: .system)
        element.tintColor = .label
        element.setImage(UIImage(systemName: Constants.searchSF), for: .normal)

        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var coditionalImageView: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(systemName: Constants.coditionSF)
        element.tintColor = UIColor(named: Constants.weatherColor)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var tempStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var tempLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .label
        element.font = .systemFont(ofSize: 80, weight: .black)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var tempTypeLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .label
        element.font = .systemFont(ofSize: 80, weight: .light)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var cityLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .label
        element.font = .systemFont(ofSize: 30)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let emptyView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setupConstraints()
    }
    private func setViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(headerStackView)
        
        headerStackView.addArrangedSubview(geoButton)
        headerStackView.addArrangedSubview(searchTextField)
        headerStackView.addArrangedSubview(searchButton)
        
        mainStackView.addArrangedSubview(coditionalImageView)
        mainStackView.addArrangedSubview(tempStackView)
        
        tempStackView.addArrangedSubview(tempLabel)
        tempStackView.addArrangedSubview(tempTypeLabel)
        
        mainStackView.addArrangedSubview(cityLabel)
        mainStackView.addArrangedSubview(emptyView)
    }

}

extension ViewController {
    
    private func setupConstraints() {
        
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainStackView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide).inset(24)
        }
        
        headerStackView.snp.makeConstraints { make in
            make.width.equalToSuperview()
        }
        
        geoButton.snp.makeConstraints { make in
            make.width.height.equalTo(40)
        }
        
        searchButton.snp.makeConstraints { make in
            make.width.height.equalTo(40)
        }
        
        coditionalImageView.snp.makeConstraints { make in
            make.width.height.equalTo(120)
        }
    }
}
