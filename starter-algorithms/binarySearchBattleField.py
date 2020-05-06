import math

def binary_search(valuesList, item):
    low = 0
    high = len(valuesList) - 1

    while low <= high:
        mid = math.floor((low + high)/2)
        guess = valuesList[mid]
        if guess == item:
            return mid
        elif guess > item:
            high = mid - 1
        else:
            low = mid + 1
    return None

def binary_search_r(valuesList, item, low, high):
    if low > high:
        return None
    else:
        mid = math.floor((low + high)/2)
        guess = valuesList[mid]
        if guess == item:
            return mid
        elif guess < item:
            return binary_search_r(valuesList, item, mid + 1, high)
        else:
            return binary_search_r(valuesList, item, low, mid - 1)


my_list = [1, 3, 5, 7, 9]
my_list2 = [0, 1, 2, 3, 4, 5]

print (binary_search_r(my_list2, 1, 0, len(my_list2) - 1))
print (binary_search(my_list, -1))
