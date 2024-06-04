//
//  TrackersViewController.swift
//  Tracker
//
//  Created by gimon on 02.06.2024.
//

import UIKit

final class TrackersViewController: UIViewController {
    
    //MARK: - Visual Components
    private var addNewTracker: UIButton = {
        guard let image = UIImage(named: "AddTracker") else {
            print(#fileID, #function, #line)
            return UIButton()
        }
        let view = UIButton.systemButton(
            with: image,
            target: nil,
            action: nil
        )
        view.tintColor = .ypBlack
        return view
    }()
    
    private let header: UILabel = {
        let view = UILabel()
        view.text = "Трекеры"
        view.textColor = .ypBlack
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        return view
    }()
    
    private let emptyTrackersImage: UIImageView = {
        guard let image = UIImage(named: "EmptyTrackersImage") else {
            print(#fileID, #function, #line)
            return UIImageView()
        }
        let view = UIImageView(image: image)
        return view
    }()
    
    private let emptyTrackersLabel: UILabel = {
        let view = UILabel()
        view.text = "Что будем отслеживать?"
        view.textColor = .ypBlack
        view.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        return view
    }()
    
    //MARK: - Public Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line)
        
        view.backgroundColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: addNewTracker)
        
        [
            emptyTrackersImage,
            emptyTrackersLabel,
            header
        ].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        addConstraintHeader()
        addConstraintEmptyTrackersImage()
        addConstraintEmptyTrackersLabel()
    }
    
    // MARK: - Private Methods
    private func addConstraintHeader() {
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
            header.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }
    
    private func addConstraintEmptyTrackersImage() {
        NSLayoutConstraint.activate([
            emptyTrackersImage.widthAnchor.constraint(equalToConstant: 80),
            emptyTrackersImage.heightAnchor.constraint(equalToConstant: 80),
            emptyTrackersImage.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            emptyTrackersImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    private func addConstraintEmptyTrackersLabel() {
        NSLayoutConstraint.activate([
            emptyTrackersLabel.topAnchor.constraint(equalTo: emptyTrackersImage.bottomAnchor, constant: 8),
            emptyTrackersLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
}
