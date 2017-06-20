# 2 pointer solution
# T: O(N) S: O(N)
def reverse_string(s)
  return "" if s == ""
  return s if s.size == 1

  left, right = 0, s.size - 1

  while left + 1 < right do
    s[left], s[right] = s[right], s[left]
    left = left + 1
    right = right - 1
  end

  s[left], s[right] = s[right], s[left]
  s
end
