# def checking1
#     check1_sum = 1*4, 2*8, 3*2, 4*0, 5*1, 6*7, 7*3, 8*0, 9*0
#     check1_sum = 4 + 16 + 6 + 0 + 5 + 42 + 21 + 0 + 0
#     check1_sum = check1_sum%11
#         if check1_sum == 1
#             puts "true"
#         else
#             puts "false"
#         end
# end
#checking1

def isbn10
    puts "running ISBN10"
    x = 10
    isbn_final =  isbn_new.split(//)
    checksum = isbn_new.pop
    #puts checksum
    check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
    #puts check
    sum = check%11
    #puts sum
    if sum == 10
        puts "VALID"
    else
        puts "INVALID"
    end
    
end
#isbn10

def isbn13
    puts "running ISBN13"
    isbn_final =  isbn_new.split(//)
    checksum = isbn_new.pop
    #puts checksum
    check = (1*isbn[0].to_i) + (3*isbn[1].to_i) + (1*isbn[2].to_i) + (3*isbn[3].to_i) + (1*isbn[4].to_i) + (3*isbn[5].to_i) + (1*isbn[6].to_i) + (3*isbn[7].to_i) + (1*isbn[8].to_i) + (3*isbn[9].to_i) + (1*isbn[10].to_i) + (3*isbn[11].to_i) + (1*isbn[12].to_i) + (3*isbn[13].to_i)
    #puts check
    sum = check%10
    #puts sum
    if sum == checksum
        puts "VALID"
    else
        puts "INVALID"
    end
    
end

def verify
    puts "Please enter a 10 or 13-digit ISBN number to validate."
    isbn = "1234567890"
    isbn_new = isbn.gsub(/[ -abcdefghijklmnopqrstuvwyz]/, '')
    puts isbn
    if isbn_new.length == 10
        isbn10
    elsif isbn_new.length == 13
        isbn13
    else
        puts "Spongebob"
    end
end
verify