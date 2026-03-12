# 🏙️ Hammamia – Smart City Mobile Application



Hammamia is a **smart city mobile application** designed to support the digital transformation of the municipality of **Hammam Sousse, Tunisia 🇹🇳**.
The application provides citizens and visitors with a centralised digital platform to access public services, discover local events, explore tourism locations, and learn about community initiatives.

This project was developed as part of a **final-year academic project in collaboration with JCI Hammam Sousse**.

---

## 📅 Project Timeline

**February 2022 – June 2022**

---

## 🎯 Project Objective

Many municipalities rely on scattered information sources, making it difficult for citizens and visitors to access useful services and local information.

The goal of **Hammamia** is to simplify access to these resources by creating a **single mobile platform** that connects people with:

* Public services
* Local events
* Tourism locations
* Cultural sites
* Community initiatives

The application aims to contribute to the **digitalisation of Hammam Sousse** while improving accessibility to city information.

---

## ✨ Key Features

* 📍 Access public services and city information
* 🎉 Discover local events and cultural activities
* 🗺️ Explore tourism locations and attractions
* 🤝 Learn about local associations and initiatives
* 📱 Modern and intuitive mobile interface
* 🧭 Centralized platform for city-related information

---

## 🛠️ Technologies Used

* **Flutter** – Cross-platform mobile development framework
* **Dart** – Programming language used by Flutter
* **FlutterFlow** – Visual UI builder used to design and accelerate the interface development
* **Firebase / Firestore** – Backend services and database

FlutterFlow was used to rapidly design the **UI and application layout**, while Flutter handled the **mobile application logic and functionality**.

---

## 📱 Repository Scope

This repository contains **the mobile application version** of the Hammamia project.

The complete project includes:

* 📱 Mobile application (this repository)
* 🌐 Web platform (separate repository coming soon)

---

## 📂 Project Structure

```
lib/        Main Flutter application source code  
assets/     Images, icons, and static resources  
android/    Android platform configuration  
ios/        iOS platform configuration  
web/        Web support files  
test/       Unit tests  

pubspec.yaml     Project dependencies and configuration  
pubspec.lock     Dependency version lock file  
README.md        Project documentation
```

---

## ⚙️ Installation

To run the project locally:

```bash
flutter pub get
flutter run
```

If the project uses generated Firestore models:

```bash
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

---

## 🖼️ Project Preview

You can view the design and concept of the project here:

🔗 https://www.behance.net/gallery/153652247/City-management-mobile-app

---

## 👨‍💻 Author

Developed by **Salim Ben Khadija** and **Mehdi Mahmoudi**

Final-year project created in collaboration with **JCI Hammam Sousse**.

---

## 📌 Notes

This repository is shared as part of a **portfolio project** to showcase the development of a smart city mobile application built with Flutter and FlutterFlow.


## 📄 License

See the LICENSE file for details regarding usage and permissions.
