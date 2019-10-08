def add(a , b)
    #Additionne a et b
    return a + b
end

def subtract(a , b)
    #Soustraire a et b
    return a - b
end

def sum(tab)
    #somme de nombre 
    return tab.sum
end

def multiply(a , b)
    #Multiplie a et b
    return a * b
end


def power(a , b)
    #calcul de a puissance b
    i = 0
    result = 1
    for i in (0 ... b)
        result *= a
    end
    return result
end


def factorial(a)
    fact = 1
    i = 1
    #Calcul de factoriel de a
        for i in (1..a) 
            fact *= i    
        end
        return fact
end
