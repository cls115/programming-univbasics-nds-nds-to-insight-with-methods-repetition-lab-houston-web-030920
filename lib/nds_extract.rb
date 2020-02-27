rn$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
@@ -25,10 +25,34 @@ def gross_for_director(d)
end

def list_of_directors(source)
  list=[]
  director_index = 0
  while director_index < source.size do
    director = source[director_index][:name]
    list.push(director)
    director_index+=1 
  end
  list

  # Write this implementation
end

def total_gross(source)
  total=0 
  directors=list_of_directors(source)
  directorstotal=directors_totals(source)
  director_index=0 
  while director_index<directors.count do
    name=directors[director_index]
    gross=directorstotal[name]
    total+=gross
    director_index+=1 
  end
  total
end
