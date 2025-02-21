//
//  ViewController.swift
//  Task App
//
//  Created by Marius on 21/02/2025.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks: [Task] = []
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var enterTask: UITextField!
    @IBOutlet weak var addTaskButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        confugureUI ()
    }
    
    func confugureUI () {
        taskLabel.text = "No tasks yet"
        enterTask.placeholder = "Create Task"
        addTaskButton.setTitle("Add Task", for: .normal)
    }

    func addTask() {
        guard let taskTitle = enterTask.text, !taskTitle.isEmpty else {
            print ("Task cannot be empty")
            return
        }
        
        let newTask = Task(title: taskTitle)
        tasks.append(newTask)
        print("New Task Created: \(newTask.title)")
        fillTask()
        enterTask.text = ""
        
    }
    
    func fillTask() {
        if tasks.isEmpty {
            taskLabel.text = "No Tasks Yet"
            return
        }
        
        let taskDescriptions = tasks.map { $0.description() } .joined(separator: "\n")
        taskLabel.text = taskDescriptions
    }
    
    
    @IBAction func addTaskButtonTapped(_ sender: Any) {
        addTask()
    }
}

