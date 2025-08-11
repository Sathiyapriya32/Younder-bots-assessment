from collections import Counter

def find_most_frequent_element_counter(input_list):
    if not input_list:
        return None  

    element_counts = Counter(input_list)
    most_common_element = element_counts.most_common(1)[0][0]
    return most_common_element

my_list = [1, 2, 3, 2, 1, 3, 2, 1, 2]
most_frequent = find_most_frequent_element_counter(my_list)
print(f"The most frequent element is: {most_frequent}")  


