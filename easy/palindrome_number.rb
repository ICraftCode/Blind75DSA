def is_palindrome(x)
  return false if x < 0 #negative numbers aren't palindromes
  original = x  # because we are going to modiy the input x
  reverse = []
  l = 0 

  #construct reverse array - O(n) time and space

  while x != 0
    reverse.push(x % 10) #keep pushing the last digit in ech iteration
    x = x / 10
    l += 1
  end

  #reconstruct the reverse array into the reverse number O(n)
  number = 0
  i = 0
  while i < l
    number += reverse[i] * (10 ** (l - i - 1)) #eg 4321 = 4*(10**3) + 3*(10**2) + 2*(10**1) + 1*(10**0)
    i += 1
  end
  puts number

  #total complexity O(n) + O(n) which can be considers as O(n)

  return number == original
end