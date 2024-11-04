# BookBot

BookBot is a simple Python script that reads a text file, counts the words and characters, and prints a report.

## Project Structure

## Requirements

- Python 3.x

## Installation

1. Clone the repository:

   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Install dependencies (if any):
   ```sh
   make install
   ```

## Usage

1. Place the text file you want to analyze in the `books/` directory.

2. Update the `FILE_PATH` variable in `main.py` to point to your text file:

   ```python
   FILE_PATH = 'books/your_text_file.txt'
   ```

3. Run the script:
   ```sh
   make run
   ```

## Functions

- `count_words(text)`: Counts the number of words in the given text.
- `count_characters(text)`: Counts the frequency of each character in the given text.
- `print_report(path, word_count, character_count)`: Prints a report of the word and character counts.

## Makefile Commands

- `make run`: Run the main program.
- `make install`: Install dependencies.
- `make freeze`: Freeze dependencies to `requirements.txt`.
- `make lint`: Lint code with flake8.
- `make format`: Format code with black.
- `make check_format`: Check code format with black.
- `make test`: Run tests with pytest.
- `make coverage`: Run tests with coverage report.
- `make clean`: Clean up cache and temporary files.
- `make help`: Display help message.

## License

This project is licensed under the MIT License.
