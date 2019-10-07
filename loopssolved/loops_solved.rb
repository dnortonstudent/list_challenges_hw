# def median(list)
#     sorted = list.sort
#     if sorted.size % 2 == 1
#         # odd length sorteds
#         return sorted[sorted.size / 2]
#     else
#         #even length sorteds
#         return (sorted[sorted.size / 2] + sorted[sorted.size / 2 - 1]) / 2.0
#         end
# end

# #           0  1  2      3/2 ==> 1
# puts median([1, 2, 3]) #2

# puts median([1, 2, 3, 4]) #2.5

# def starts_with?(list, number)
#     if list[0] == number
#         return true
#     else
#         return false
#     end
# end

# puts starts_with?([1, 2, 3], 1) #true
# puts starts_with?([1, 2, 3], 2)

# # 2 - Potentially see everything in the list at one time
# ### ==> one loop or seperate loops

# def avg(list)
#     total = 0
#     list.each do |n|
#         total += n
#     end
#     return total / list.size.to_f
# end

# puts avg([1, 2, 3]) # 2

# def count(list, number)
#     c = 0
#     list.each do |n|
#         if n == number
#             c += 1
#         end
#     end
#     return c

# end

# # puts count ([1, 1, 1], 1) # 3
# # puts count([1, 1, 1], 2) #0

# def std_dev(list)
#     total = 0
#     list.each do |n|
#         total += n
#     end
#     avg = total / list.size.to_f

#     sum_squares = 0
#     list.each do |n|
#         sum_squares += (n - avg) * (n - avg)
#     end
#     return Math.sqrt(sum_squares / (list.size - 1))
# end

# puts std_dev([1, 2, 3])

# # 3 - Have to compare each item in a list to most other things
# #### nested loops, loops in loops

# # mode with an unsorted list

# def mode(list)
#     max_count = 0
#     mode = list[0]
#     list.each do |a| # liiking for a mode, number by number  
#         count = 0
#         list.each do |b| # count how many a's there are
#             if b == a
#                 count += 1
#             end
#         end
#         if count > max_count
#             max_count = count
#             mode = a
#         end
#     end
#     return mode
# end

# puts mode([2, 3, 1, 2, 2, 3, 2])


# def is_increasing(list)
#     (list.size - 1).times do |n|
#         if list[n] < list[n - 1]
#             return false
#         end
#     end
#     return true
# end

# puts is_increasing([1, 2, 3]) # true
# puts is_increasing([3, 2, 1]) # false
# puts is_increasing([1, 2, 2, 3]) # false

# def num_cats(str)
#     count = 0
#     (str.size - 2).times do |i|
#        slice = str[i.. (i+2)]
#        if slice == "cat"
#         count += 1 
#        end
#     end
#     return count
# end

# puts num_cats("catdogcatdogcat")
# puts num_cats("cat")
# puts num_cats("dog")


# def threed(list)
#     threes = 0
#     (list.size - 1).times do |n|
#         if list[n] == 3 && list[n-1] != 3 && list[n+1] != 3
#             threes += 1
#         elsif list[n] == 3 && (list[n-1] == 3 || list[n+1] == 3)
#             return false
#         end
#     end
#     if threes == 3
#         return true
#     else
#         return false
#     end
# end

# puts threed([3, 1, 3, 1, 3, 1])

# def samefirstlast(list)
#     if list.size > 1 && list[0] == list[(list.size - 1)]
#         return true
#     else
#         return false
#     end
# end

# puts samefirstlast([1, 3, 5, 1])
# puts samefirstlast([1])

# def getsandwich(sandwich)
#     if sandwich[0.. 4] == "bread" && sandwich[sandwich.size - 5 .. sandwich.size] == "bread"
#         return sandwich[5.. (sandwich.size - 6)]
#     else
#         return ""
#     end
# end

# def getsandwich(sandwich)
#     ().times do |n|
#         if sandwich[n.. ]
# puts getsandwich("breadjAMbread")
# puts getsandwich("breadbreadjamjambreadjambread")

# def shift_left(list)
#     flist = []
#     n = 1
#     (list.size-1).times do |p|
#         flist.push list[n]
#         n +=1
#     end
#     flist.push list[0]
#     return flist
# end

# puts shift_left([1, 2, 3])


# def can_balance(list)
#     sum1 = 0
#     sum2 = 0
#     while sum1 != sum2 do |i|
#         list.size times do |n|
#             sum1 += list[n]
#             sum2 += list[list.size-n]
#         end
#     end
#     if sum1 == sum2
#         return true
#     else
#         return false
#     end
# end

def can_balance(list)
    n1 = 0
    n2 = 0
    v = 0
    (list.size).times do |n|
        n1 += list[v]
        v += 1
        if v == list.size
            v= v-1
        end
    end
    (v).times do |k|
        n1 = n1 - list[v]
        n2 = n2 + list[v]
        if n1 == n2 
            return true
        else
        v = v - 1
        end
    end
    return false
end

puts can_balance([3, 7, 9, 2])


def count_code(string)
    counter = 0
    (string.size-3).times do |i|
        if string[i] == "c" && string[i+1] == "o" && string[i+3] == "e"
            counter += 1
        end
    end
    return counter
end

puts count_code("codecodecopecobedocecode")

def middle_way(list1, list2)
    listfinal = []
    listfinal.push list1[list1.size/2]
    listfinal.push list2[list2.size/2]
    return listfinal
end

print middle_way([1, 2, 3], [1, 2, 3])

# def either_2_4(list)
#     fours = 0
#     twos = 0
#     (list.size-1).times do |i|
#         if list[i] == 2 && list[i+1] == 2
#                 twos = 1
#         end
#         if list[i] == 4 && list[i+1] == 4
#                 fours = 1
#         end
#     end
#     if fours == 1 && twos == 1
#         return false
#     elsif fours == 1 && twos == 0
#         return true
#     elsif twos == 1 && fours == 0
#         return true
#     elsif twos == 0 && fours == 0
#         return "This"
#     end
# end

# print either_2_4([2, 2, 3, 5])


# def max_span(list)
# end





# def g_happy(str)
#     (str.size).times do |n|
#         if str[n] == "g"
#             if str[n-1] != "g" && str[n+1] != "g"
#                 return false
#             end
#         end
#     end
#     return true
# end

# puts g_happy("gggggggg")
# puts g_happy("ggoggoggo")
# puts g_happy("gogogogogo")

# def merge(str1, str2)
#     strfixed = ([])
#     a = 0
#     b = 0
#     while str1.size > a && str2.size > b
#         if str1[a] < str2[b]
#             strfixed.push(str1[a])
#             a += 1
#         elsif str2[b] < str1[a]
#             strfixed.push(str2[b])
#             b += 1
#         else
#             strfixed.push(str1[a])
#             strfixed.push(str2[b])
#             a += 1
#             b += 1
#         end
#     end
#     while a < str1.size
#         strfixed.push(str1[a])
#         a += 1
#     end
#     while b < str2.size
#         strfixed.push(str2[b])
#         b += 1
#     end
#     return strfixed
# end

# print merge([1, 3, 5], [2, 4, 6])

# print merge([1, 3, 10, 17], [1, 3, 4, 13, 28])
            
