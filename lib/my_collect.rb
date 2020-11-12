
def my_collect(array)
first_names = []
counter = 0 
while
    counter < array.length 
    first_names << yield(array[counter])
    counter += 1 
    end
    first_names
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
    name.split(" ").first
end

def lang_collect(array)
languages = []
i = 0 
while
    i < array.length
    languages << yield(array[i])
    i += 1
    end
    languages
end

array = ["ruby", "javascript","python","objective-c"]
lang_collect(array) do |lang|
    lang.upcase
end
