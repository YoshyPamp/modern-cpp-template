#include "../../include/BaseComponent.hpp"

std::string generate_uuid() {
    static std::random_device rd;
    static std::mt19937 gen(rd());
    static std::uniform_int_distribution<> dist(100000, 999999);

    return "COMP-" + std::to_string(dist(gen));
}

BaseComponent::BaseComponent() : id(generate_uuid()) {}