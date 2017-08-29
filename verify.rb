check1 = "4820173001"
check2 = "8201640572814"
check3 = "870204-1736"
check4 = "870 204 1736-12 8"

def checking1
    check1_sum = 1*4, 2*8, 3*2, 4*0, 5*1, 6*7, 7*3, 8*0, 9*0
    check1_sum = 4 + 16 + 6 + 0 + 5 + 42 + 21 + 0 + 0
    check1_sum = check1_sum%11
        if check1_sum == 1
            puts "true"
        else
            puts "false"
        end
end
#checking1

def isbn10
    isbn = gets.chomp
    x = 10
    isbn = isbn.gsub(/[ -]/, '')
    isbn =  isbn.split(//)
    checksum = isbn.pop
    #puts checksum
    check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
    #puts check
    sum = check%11
    #puts sum
    if sum == x
        puts "VALID"
    else
        puts "INVALID"
    end
    
end
#isbn10

def isbn13
    isbn = gets.chomp
    x = 10
    isbn = isbn.gsub(/[ -]/, '')
    isbn =  isbn.split(//)
    checksum = isbn.pop
    #puts checksum
    check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
    #puts check
    sum = check%11
    #puts sum
    if sum == checksum
        puts "VALID"
    else
        puts "INVALID"
    end
    
end