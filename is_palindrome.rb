# 2 pointer version
# T: O(n), S: O(1)

def is_palindrome(s)
  string = s.downcase.gsub(/[^a-z0-9]/, '')

  return true if string == "" || string.size == 1

  left = 0
  right = string.size - 1

  while left < right do
    if string[left] != string[right]
      return false
    else
      left = left + 1
      right = right - 1
    end
  end

  true
end

# recursive version

def is_palindrome(s)
  string = s.downcase.gsub(/[^a-z0-9]/, '')

  return true if string == "" || string.size == 1

  left = 0
  right = string.size - 1

  if string[left] != string[right]
    return false
  else
    is_palindrome(string[left + 1, right - 1])
  end
end

# puts is_palindrome("A man, a plan, a canal: Panama") # true
# puts is_palindrome("race a car") # false
