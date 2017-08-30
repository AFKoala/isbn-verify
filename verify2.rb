def isbn_dash(isbn)
    puts isbn
    x = 10
    clean_isbn = isbn.delete('-')
    puts clean_isbn
    unless isbn || (isbn.include?(x) && isbn[9] == x)
        false
    end

    case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
end

def isbn_space(isbn)
    # puts isbn
    clean_isbn = isbn.delete(' ')
    # puts clean_isbn

   case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
end

def isbn_both(isbn)
    puts isbn
    clean_isbn = isbn.delete(' -')
    puts clean_isbn

   case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
end

isbn_dash('1234-567-89x')
puts '------------'
puts '------------'
isbn_space('1234 567 890')
isbn_both('1-234 567 8-90')