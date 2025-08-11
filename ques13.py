list1 = [1, 2, 3, 4, 5]
list2 = [3, 4, 5, 6, 7]


set1 = set(list1)
set2 = set(list2)


common_elements_set = set1.intersection(set2)


common_elements_list = list(common_elements_set)

print(common_elements_list)