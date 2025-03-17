# AI Procedural Generator (C++)

## 🛠 Setup Instructions

### **1. Install Prerequisites**
- Install [Docker](https://www.docker.com/products/docker-desktop) (for running the development environment).
- Ensure `make` is installed (comes preinstalled on macOS & Linux, install with `choco install make` on Windows).

### **2. Clone the Repository**
```sh
git clone <repo-url>
cd <repo-name>
```

### **3. Build & Run the Project**
```sh
make run
```
This will **build the Docker container** and start the C++ application inside it.

### **4. Format Code**
```sh
make format
```
Automatically formats all C++ source files using **Clang-Format**.

### **5. Run Static Analysis**
```sh
make lint
```
Runs **Clang-Tidy** for static analysis and best-practice suggestions.

### **6. Perform Deeper Analysis**
```sh
make check
```
Runs **CppCheck** to find potential issues in the codebase.

### **7. Enter the Development Shell**
```sh
make shell
```
Opens an interactive shell inside the Docker container for debugging.

### **8. Stop the Project**
```sh
make stop
```
Stops and removes the running container.

### **9. Rebuild Everything (Clean Build)**
```sh
make rebuild
```
Completely **removes the existing container, images, and volumes**, then rebuilds from scratch.

---

## 🚀 Features
- Procedural content generation (**NPC Generator**).
- **Docker-based development** for platform-independent builds.
- **Conan package management** for handling dependencies.
- **Automated code linting & static analysis**.
- **Git best practices & `.gitignore` included**.

---

## 👨‍💻 Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m "Add new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a **pull request**.

---

## 🌟 License
This project is licensed under the **MIT License**.

For any questions or contributions, contact **[Your Name]** at **[your-email@example.com]**.