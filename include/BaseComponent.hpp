#ifndef BASE_COMPONENT_HPP
#define BASE_COMPONENT_HPP

#include <string>
#include <random>
#include <nlohmann/json.hpp>

std::string generate_uuid();

class BaseComponent {
    protected:
        std::string id;

    public:
        BaseComponent();

        virtual ~BaseComponent() = default;

        std::string getId() const { return id; }

        virtual nlohmann::json to_json() const = 0;

        virtual void from_json(const nlohmann::json& json) = 0;
        
};

#endif // BASE_COMPONENT_HPP
