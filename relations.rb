class Relation
  def initialize(set, definition)
    @set = set
    @definition = definition
    @r = {}
  end
  
  attr_reader :r, :set, :definition
  
  def pairElements(e1, e2)
    @r[e1] = e2
  end
end

def setPair(pair) #vector[2]
  
end

# takes a set of integers and
# returns a relation of division. 
def DividesRelation(set)
  relations = Array.new
  for i in set
    for j in set
      if i%j==0
        relations << [j, i]
        # puts "[#{j}, #{i}]"
      end
    end
  end
  relations
end
DividesRelation( [1, 2, 3, 4] )

# create the dual of the relation
def dualRelation(relation)
  dualRel = Array.new
  relation.each do |r|
    dualRel << [r[1], r[0]]
  end
  dualRel
  # p dualRel
end
dualRelation( DividesRelation( [1, 2, 3, 4] ) )

def IsReflexive(relation)
  is_reflexive = true
  u; # index into Dom(R)
  for u in DomainRelation(R) do
    is_reflexive := is_reflexive and member([u,u], R);
  od;
  RETURN(is_reflexive);
end