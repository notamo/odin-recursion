def merge_sort(arr)
  low = 0
  high = arr.length - 1

  if low < high
    mid = (low + high) / 2
    a_sorted = merge_sort(arr[low..mid])
    b_sorted = merge_sort(arr[(mid+1)..high])
    arr = merge(a_sorted, b_sorted)
  end

  arr
end

def merge(a, b)
  m = a.length - 1
  n = b.length - 1
  c = []
  i = 0
  j = 0
  k = 0

  while i <= m && j <= n
    if a[i] < b[j]
      c[k] = a[i]
      i += 1
      k += 1
    else
      c[k] = b[j]
      j += 1
      k += 1
    end
  end

  (i..m).each { |idx| c.push(a[idx]) }
  (j..n).each { |idx| c.push(b[idx]) }

  c
end

# p merge([], [])
# p merge([1], [])
# p merge([1], [2])
# p merge([1], [2, 4, 5])
# p merge([9], [2, 4, 5])
# p merge([1, 2, 3], [4])
# p merge([1, 2, 3], [0])

p merge_sort([])                          # []
p merge_sort([73])                        # [73]
p merge_sort([1, 2, 3, 4, 5])             # [1, 2, 3, 4, 5]
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])   # [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])         # [79, 100, 105, 110]