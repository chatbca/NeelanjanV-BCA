def knapsack_greedy(values, weights, capacity):
    n = len(values)
    ratios = [(values[i] / weights[i], weights[i], values[i], i) for i in range(n)]

    # Sort items based on value-to-weight ratio in descending order
    ratios.sort(reverse=True)

    selected_items = [0] * n
    total_value = 0
    remaining_capacity = capacity

    for ratio, weight, value, index in ratios:
        if remaining_capacity >= weight:
            selected_items[index] = 1
            total_value += value
            remaining_capacity -= weight

    return selected_items, total_value

# Example usage:
values = [60, 100, 120]
weights = [10, 20, 30]
capacity = 50

selected_items, total_value = knapsack_greedy(values, weights, capacity)

print("Selected items:", selected_items)
print("Total value:", total_value)
