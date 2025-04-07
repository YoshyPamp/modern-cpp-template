# Modern C++ Project Template

## ✨ Features
- **Modern C++17** with CMake build system
- **Docker-based development** environment with docker-compose
- **Conan package management** for dependencies (nlohmann_json, spdlog, GTest)
- **Component-based architecture** with UUID generation
- **Automated code quality tools**:
  - Clang-Format for code formatting
  - Clang-Tidy for static analysis
  - CppCheck for deeper code analysis
- **Git best practices** & `.gitignore` included

## 🛠 Setup Instructions

### **1. Use This Template**
Click the "Use this template" button or clone this repository to start a new project.

### **2. Prerequisites**
- Install [Docker](https://www.docker.com/products/docker-desktop) (for running the development environment)
- Ensure `make` is installed (comes preinstalled on macOS & Linux, install with `choco install make` on Windows)

### **3. Clone Your New Repository**
```sh
git clone <your-new-repo-url>
cd <your-project-name>
```

### **4. Customize the Project**
- Update project name in `CMakeLists.txt`
- Modify `src/main.cpp` for your application logic
- Add your own components to `src/components/`

### **5. Build & Run the Project**
```sh
make run
```
This will **build the Docker container** and start the C++ application inside it.

## 🚀 Development Workflow

### **Format Code**
```sh
make format
```
Automatically formats all C++ source files using **Clang-Format**.

### **Run Static Analysis**
```sh
make lint
```
Runs **Clang-Tidy** for static analysis and best-practice suggestions.

### **Perform Deeper Analysis**
```sh
make check
```
Runs **CppCheck** to find potential issues in the codebase.

### **Enter the Development Shell**
```sh
make shell
```
Opens an interactive shell inside the Docker container for debugging.

### **Stop the Project**
```sh
make stop
```
Stops and removes the running container.

### **Rebuild Everything (Clean Build)**
```sh
make rebuild
```
Completely **removes the existing container, images, and volumes**, then rebuilds from scratch.

## 📂 Project Structure
```
.
├── CMakeLists.txt         # CMake build configuration
├── Dockerfile             # Docker container definition
├── docker-compose.yml     # Docker orchestration
├── Makefile               # Development commands
├── include/               # Header files
│   └── BaseComponent.hpp  # Base component interface
├── src/                   # Source code
│   ├── main.cpp           # Application entry point
│   └── components/        # Component implementations
│       └── BaseComponent.cpp
└── .gitignore             # Git ignore file
```

## 🌟 License
This project is licensed under the **MIT License**.

---

*To make this template your own, replace this section with information about your specific project.*