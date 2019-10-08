def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str , int = 2)
    retour = (str + " ") * int
    return retour.strip
end

def start_of_word(str , int)
    retour = []
    result = str.chars
    i = 0
        result.each do |letter|
            if i < int 
                retour << result[i]
                i+=1
            end
        end
    return retour.join
end        

def first_word(str)
    retour = []
    result = str.chars
    i = 0
        result.each do |letter| 
            loop do 
                break if result[i] == " "
                retour << result[i] 
                i += 1
            end
        end
        return retour.join
    end


    def littleword(str)
        lilword = ["the" , "and", "or"]
            for i in 0...lilword.size
                if str == lilword[i]
                    return true
                end
            end
        return false 
    end
    
    
    def titleize(str)
        retour = []
        result = str.split
        i = 0
        for i in 0...result.size
            if littleword(result[i]) == false
                retour << result[i].capitalize
            elsif littleword(result[i]) == true && i == 0
                retour << result[i].capitalize
            elsif littleword(result[i]) == true
                retour << result[i]    
            end
        end
        
        return retour.join(" ")
    end