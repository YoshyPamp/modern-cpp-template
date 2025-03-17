# Run the container interactively (default runs the app)
run:
	docker-compose up --build

# Stop and remove the container
stop:
	docker-compose down

# Rebuild the Docker image from scratch
rebuild:
	docker-compose down --rmi all --volumes --remove-orphans
	docker-compose build --no-cache

# Enter the container manually (fixed to NOT run the app)
shell:
	docker-compose run --rm --entrypoint /bin/bash cpp_dev

# Format code using Clang-Format inside the container
format:
	docker-compose run --rm --entrypoint /bin/bash cpp_dev -c "clang-format -i src/*.cpp include/*.hpp"

# Run Clang-Tidy for static analysis (fixed)
lint:
	docker-compose run --rm --entrypoint /bin/bash cpp_dev -c "clang-tidy src/main.cpp -- -Iinclude"

# Run CppCheck for deeper analysis (fixed)
check:
	docker-compose run --rm --entrypoint /bin/bash cpp_dev -c "cppcheck --enable=all --inconclusive --quiet src/"
