def find_second_largest_sorted(input_list):
    if len(input_list) < 2:
        return "List must contain at least two elements."
    
    sorted_list = sorted(list(set(input_list))) 
    
    if len(sorted_list) < 2:
        return "List does not have a distinct second largest element."
    return sorted_list[-2]


my_list = [10, 20, 4, 45, 99, 20]
second_largest = find_second_largest_sorted(my_list)
print(f"The second largest element is: {second_largest}")

