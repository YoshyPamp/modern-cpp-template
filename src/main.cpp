#include <iostream>
#include "../include/BaseComponent.hpp"

class TestComponent : public BaseComponent {
    public:
        nlohmann::json to_json() const override { return {{"id", getId()}}; }
        void from_json(const nlohmann::json& j) override {}
};

int main() {
    TestComponent test;
    std::cout << "Generated Component ID: " << test.getId() << std::endl;
    return 0;
}
