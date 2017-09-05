# def isbn_both(isbn)
#     clean_isbn = isbn.delete(' -')
#     case clean_isbn.length
#         when 10
#             then true
#         when 13
#             then true
#     end
#     split_isbn = clean_isbn.chars
#     checksum = split_isbn.pop
#     if clean_isbn.length == 10 && checksum == 'x'
#         checksum.sub!('x', '10')
#     elsif clean_isbn.length == 10 && checksum == '0'
#         checksum.sub!('0', '10')
#     end
#     checksum = checksum.to_i
#     if clean_isbn.length == 10
#         check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
#         final = check%11
#         if final == checksum
#             puts "VALID"
#         else
#             puts "INVALID"
#         end        
#     elsif clean_isbn.length == 13
#         check = (1*isbn[0].to_i) + (3*isbn[1].to_i) + (1*isbn[2].to_i) + (3*isbn[3].to_i) + (1*isbn[4].to_i) + (3*isbn[5].to_i) + (1*isbn[6].to_i) + (3*isbn[7].to_i) + (1*isbn[8].to_i) + (3*isbn[9].to_i) + (1*isbn[10].to_i) + (3*isbn[11].to_i)
#         final = check%10
#         if final == checksum
#             puts "VALID"
#         else
#             puts "INVALID"
#         end 
#     end        
# end

def clean(isbn)
    clean_isbn = isbn.delete(' -')
    case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
    checkSumArray(clean_isbn)
end

def checkSumArray(clean_isbn)
    split_isbn = clean_isbn.chars
    checksum = split_isbn.pop
    if clean_isbn.length == 10 && checksum == 'x'
        checksum.sub!('x', '10')
    elsif clean_isbn.length == 10 && checksum == '0'
        checksum.sub!('0', '10')
    end
    checksum = checksum.to_i
    if clean_isbn.length == 10
        math10(split_isbn)
    elsif clean_isbn.length == 13
        math13(split_isbn)
    end
end

def math10(split_isbn)
    check = (1*isbn[0].to_i) + (2*isbn[1].to_i) + (3*isbn[2].to_i) + (4*isbn[3].to_i) + (5*isbn[4].to_i) + (6*isbn[5].to_i) + (7*isbn[6].to_i) + (8*isbn[7].to_i) + (9*isbn[8].to_i)
    final = check%11
    if final == checksum
        true
    else
        false
    end
end

def math13(split_isbn)
    check = (1*isbn[0].to_i) + (3*isbn[1].to_i) + (1*isbn[2].to_i) + (3*isbn[3].to_i) + (1*isbn[4].to_i) + (3*isbn[5].to_i) + (1*isbn[6].to_i) + (3*isbn[7].to_i) + (1*isbn[8].to_i) + (3*isbn[9].to_i) + (1*isbn[10].to_i) + (3*isbn[11].to_i)
    final = check%10
    if final == checksum
        true
    else
        false
    end
end
