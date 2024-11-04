# Python Parameters
PY = python3
PIP = $(PY) -m pip
PYRUN = $(PY) main.py

# Variables for directories and options
SRC_DIR = src
TEST_DIR = tests
REQUIREMENTS = requirements.txt

# Build targets
run:
	@echo "Running the program..."
	$(PYRUN)
	
install:
	@echo "Installing dependencies..."
	$(PIP) install -r $(REQUIREMENTS)

freeze:
	@echo "Freezing dependencies to $(REQUIREMENTS)..."
	$(PIP) freeze > $(REQUIREMENTS)

lint:
	@echo "Linting code with flake8..."
	flake8 $(SRC_DIR) $(TEST_DIR)

format:
	@echo "Formatting code with black..."
	black $(SRC_DIR) $(TEST_DIR)

check_format:
	@echo "Checking code format with black..."
	black --check $(SRC_DIR) $(TEST_DIR)

test:
	@echo "Running tests with pytest..."
	pytest $(TEST_DIR)

coverage:
	@echo "Running tests with coverage report..."
	pytest --cov=$(SRC_DIR) $(TEST_DIR)

clean:
	@echo "Cleaning up cache and temporary files..."
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	rm -rf .pytest_cache .coverage

# Help Command
help:
	@echo "Available commands:"
	@echo "  make run           - Run the main program"
	@echo "  make install       - Install dependencies"
	@echo "  make freeze        - Freeze dependencies to requirements.txt"
	@echo "  make lint          - Lint code with flake8"
	@echo "  make format        - Format code with black"
	@echo "  make check_format  - Check code format with black"
	@echo "  make test          - Run tests with pytest"
	@echo "  make coverage      - Run tests with coverage report"
	@echo "  make clean         - Clean up cache and temporary files"
	@echo "  make help          - Display this help message"