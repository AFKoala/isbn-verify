def isbn10(isbn)
    puts "running ISBN10"
    puts isbn
    isbn.is_a? String
    x = 10
    puts "----------"
    isbn = isbn.gsub(/[ -abdcefghijklmnopqrstuvwyz]/, '')
    isbn =  isbn.split(//)
    checksum = isbn.pop
    puts isbn
    #puts checksum
    check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
    puts check
    final = check%11
    puts final
    if final == 10
        puts "VALID"
    else
        puts "INVALID"
    end
    
end

def isbn13(isbn)
    puts "running ISBN13"
    isbn_final =  isbn_new.split(//)
    checksum = isbn_new.pop
    #puts checksum
    check = (1*isbn[0].to_i) + (3*isbn[1].to_i) + (1*isbn[2].to_i) + (3*isbn[3].to_i) + (1*isbn[4].to_i) + (3*isbn[5].to_i) + (1*isbn[6].to_i) + (3*isbn[7].to_i) + (1*isbn[8].to_i) + (3*isbn[9].to_i) + (1*isbn[10].to_i) + (3*isbn[11].to_i) + (1*isbn[12].to_i)
    #puts check
    sum = check%10
    #puts sum
    if sum == checksum
        puts "VALID"
    else
        puts "INVALID"
    end
end

isbn10("1234567890")