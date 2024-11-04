def main():
    path_to_file = 'books/frankenstein.txt'
    with open(path_to_file, 'r') as f:
        file_contents = f.read()
        print(file_contents)

        word_count = count_words(file_contents)
        # print(f"The book contains {word_count} words.")

        character_count = count_characters(file_contents)
        # print("Character frequencies:", character_count)

        print_report(path_to_file, word_count, character_count)

def count_words(text):
    words = text.split()
    return len(words)

def count_characters(text):
    text = text.lower()
    char_counts = {}
    for char in text:
        if char.isalpha():
            if char in char_counts:
                char_counts[char] += 1
            else:
                char_counts[char] = 1
    return char_counts

def print_report(path, word_count, character_count):
    print(f"--- Begin report of {path} ---")
    print(f"{word_count} words found in the document\n")
    
    sorted_characters = sorted(character_count.items(), key=lambda item: item[1], reverse=True)
    
    for char, count in sorted_characters:
        print(f"The '{char}' character was found {count} times")
    print("--- End report ---")

if __name__ == '__main__':
    main()