#---****'who is the biggest number'****---#

def who_is_bigger(a, b, c)
    max = a
    retour = "a is bigger"
    
    #test 
    if a == nil || b == nil || c == nil
        #si nil est present
        return "nil detected"
    end
    #testez si b est max
    if b > max
        max = b
        retour = "b is bigger"
    end
    
    #testez si c est max
    if c > max 
        max = c
        retour = "c is bigger"
    end
    return retour
end

#---****'crazy stuff on strings'****---#

#fonction recherche de LTA dans la phrase
def noLTA(caractere)
    ltas = ['a','l','t']
    ltas.each do |lta|
        if caractere.downcase == lta
            return true
        end
    end
    return false
end


def reverse_upcase_noLTA(text)
    result = text.chars
    retour = []

    #receuillir tous les lettres differents de ALT

    result.each do |letter|
        if noLTA(letter) == false 
            retour << letter
        end
    end
    
    #sortir les lettres du tableau
    sentence_noLTA = retour.join

    #Rendre en majuscule
    sentence_upcase = sentence_noLTA.upcase

    #renverser les lettres
    sentence_reverse = sentence_upcase.reverse

    return sentence_reverse
end

#---****'42 finder'****---#

def array_42(arr)
    
    for i in (0...arr.length)
        if arr[i] == 42
            return true
        end
    end
    return false
end

#---****'crazy stuff on arrays'****---#

def flattened(arr)  #diminue la dimension du tableau en argument
    retour = [] #la variable à retourner
    for i in (0 ... arr.size)   #parcours du tableau
        if arr[i].class.to_s == "Array" #la valeur du cellule du tableau est encore est tableau
            for j in (0 ... arr[i].size)
                retour << arr[i][j] #on developpe ce tableau pour que sa dimension diminue
            end
        else
            retour << arr[i]    #si ce n'est pas un tableau on continue de concatener la valeur suivant à celle de la variable retour
        end
    end
    return retour
end

def multiplicatebytwo(arr)  #fonction qui retourne la la multiplication de chaque cellule par 2
    for i in (0 ... arr.size)
        arr [i] = 2 * arr[i]
    end
    return arr
end

def removemultiplyofthree(arr)  #supprime les valeurs multiple de 3 
    retour = [] #valeur à retourner
    for i in (0 ... arr.size)
        if arr[i] % 3 != 0  #si le reste de la division par 3 est different de 0
            retour << arr[i]    #alors on le met dans la variable retour
        end
    end
    return retour
end

def removeelement(arr,index)    #fonction qui supprime un indice 
    retour = []
    for i in (0...arr.size) do
        if index != i
            retour << arr[i]
        end
    end
    return retour
end

def existduplicate(tab) #recherche du doublon dans le tableau tab
    for i in (0...tab.size) do  #   parcourir le tableau depuis l'indice i = 0
        for j in (i+1...tab.size) do    #   comparer la valeur du tableau indice i et i+1 jusqu'a sa taille 
            if(tab[i]==tab[j])  #si il y a 2 valeurs egaux alors
                return [true,j] #on retourne true et l'indice du second pour qu'on puisse supprimer
            end
        end
    end
    return [false]   #si non, on retourne false (il n'y a plus de doublon) 
end

def removeduplicate(tableau)
    while existduplicate(tableau)[0] == true
        tableau = removeelement(tableau, existduplicate(tableau)[1])
    end
    return tableau
end

def sortbyasc(arr)
    arraysize = arr.size    #on recupere la taille de l' array
    i = 0   # On a besoin de i pour parcourir le array
    while i<arraysize   #tant que i<longueur du array
        while i+1<arraysize # et i+1 <arraysize
            if arr[i]>arr[i+1]  #   on met le plus grand à droite pour qu'on puisse avoir des tris croissants
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
            i+=1    #on incremente le i
        end
        arraysize-=1 #on decremente la longueur du array pour qu'on trie les inferieurs au plus grand du tableau
    end
    return arr
end

def magic_array(arr)
    i = 0
    while i<arr.size
        while arr[i].class.to_s == "Array"
            arr = flattened(arr)
            i=0
        end
        i+=1      
    end
    arr = multiplicatebytwo(arr)
    arr = removemultiplyofthree(arr)
    #duplicate
    arr = removeduplicate(arr)
    #sortbyasc
    arr = sortbyasc(arr)
    return arr
end