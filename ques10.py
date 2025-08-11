def count_vowels(input_string):
    
    vowels = "aeiouAEIOU"  
    vowel_count = 0

    for char in input_string:
        if char in vowels:
            vowel_count += 1

    return vowel_count

my_string = "Hello World"
num_vowels = count_vowels(my_string)
print(f"The number of vowels in '{my_string}' is: {num_vowels}")

another_string = "hello everyone "
num_vowels_2 = count_vowels(another_string)
print(f"The number of vowels in '{another_string}' is: {num_vowels_2}")