def isbn_both(isbn)
    p isbn
    clean_isbn = isbn.delete(' -')
    # p clean_isbn
    case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
    # p clean_isbn.class
    split_isbn = clean_isbn.chars
    # p split_isbn.class
    # p split_isbn
    checksum = split_isbn.pop
    # p checksum
    if clean_isbn.length == 10 && checksum == 'x'
        checksum.sub!('x', '10')
    elsif clean_isbn.length == 10 && checksum == '0'
        checksum.sub!('0', '10')
    end
    checksum = checksum.to_i
    p checksum
    if clean_isbn.length == 10
        check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
        final = check%11
        # p final
        if final == checksum
            puts "VALID"
        else
            puts "INVALID"
        end        
    elsif clean_isbn.length == 13
        check = (1*isbn[0].to_i) + (3*isbn[1].to_i) + (1*isbn[2].to_i) + (3*isbn[3].to_i) + (1*isbn[4].to_i) + (3*isbn[5].to_i) + (1*isbn[6].to_i) + (3*isbn[7].to_i) + (1*isbn[8].to_i) + (3*isbn[9].to_i) + (1*isbn[10].to_i) + (3*isbn[11].to_i) + (1*isbn[12].to_i)
        final = check%10
        # p final
        if final == checksum
            puts "VALID"
        else
            puts "INVALID"
        end 
    end        
end

puts 'Please enter a 10 or 13-digit ISBN number to validate.'
isbn = gets.chomp.to_s
isbn_both(isbn)